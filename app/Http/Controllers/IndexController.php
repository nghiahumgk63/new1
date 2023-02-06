<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\Genre;
use App\Models\Country;
use App\Models\Movie;
use App\Models\Episode;
use App\Models\Movie_Genre;
use App\Models\Rating;
use Carbon\Carbon;
use DB;


class IndexController extends Controller
{
    public function filter(Request $request){
        $sapxep = $_GET['order'];
        $genre_get = $_GET['genre_filter'];
        $country_get = $_GET['country_filter'];
        $year_get = $_GET['year'];



        if($sapxep=='' && $genre=='' && $genre=='' && $year==''){


              return redirect()->back();

        }else{

         $category = Category::orderBy('position','ASC')->where('status',1)->get();
         $genre = Genre::orderBy('id','DESC')->get();
         $country = Country::orderBy('id','DESC')->get();
          $phimhot = Movie::where('phim_hot',1)->where('status',1)->orderBy('ngaycapnhat','DESC')->get();
         $phimhot_sidebar = Movie::where('phim_hot',1)->where('status',1)->orderBy('ngaycapnhat','DESC')->take('20')->get();

         $phimhot_trailer = Movie::where('resolution',5)->where('status',1)->orderBy('ngaycapnhat','DESC')->take('10')->get();
         $movie = Movie::withCount('episode');
         if($genre_get){
            $movie->whereHas('movie_genre', function($query) use ($genre_get) {
                $query->where('genre_id', $genre_get);
            });
         }elseif($country_get){
             $movie->where('country_id','=',$country_get);
         }elseif($year_get){
             $movie->where('year','=',$year_get);
         }elseif($order){
             $movie->orderBy('title','ASC');
         }
         $movie = $movie->orderBy('ngaycapnhat','DESC')->paginate(40);
         $newDay = Carbon::now('Asia/Ho_Chi_Minh')->subdays(31);
         $phimnew_new = Movie::where('releasedate','>=', $newDay)->where('status',1)->orderBy('releasedate','DESC')->take('10')->get();
         return view('pages.filter', compact('category','genre','country','movie','phimhot','phimhot_sidebar','phimhot_trailer', 'phimnew_new'));
        }
     }
    public function timkiem(){
        if(isset($_GET['search'])){
            $search = $_GET['search'];
            $category = Category::orderBy('position','ASC')->where('status',1)->get();
            $genre = Genre::orderBy('id','DESC')->get();
            $country = Country::orderBy('id','DESC')->get();
            $phimhot_sidebar = Movie::where('phim_hot',1)->where('status',1)->orderBy('ngaycapnhat','DESC')->take('20')->get();
            $phimhot_trailer = Movie::where('resolution',5)->where('status',1)->orderBy('ngaycapnhat','DESC')->take('10')->get();

            $movie_sr = Movie::where('title','LIKE','%'.$search.'%')
            ->orWhere('filmstudio','LIKE','%'.$search.'%')
            ->orWhere('director','LIKE','%'.$search.'%')
            ->orWhere('movieactor','LIKE','%'.$search.'%')
            ->orWhere('releasedate','LIKE','%'.$search.'%')
            ->orderBy('ngaycapnhat','DESC')->paginate(40);

            $newDay = Carbon::now('Asia/Ho_Chi_Minh')->subdays(31);
            $phimnew_new = Movie::where('releasedate','>=', $newDay)->where('status',1)->orderBy('releasedate','DESC')->take('10')->get();
            return view('pages.timkiem', compact('category','genre','country','search','movie_sr','phimhot_sidebar','phimhot_trailer', 'phimnew_new'));


        }else{
            return redirect()->to('pages. ');
        }
    }
    public function home(){
        $phimhot = Movie::where('phim_hot',1)->where('status',1)->orderBy('port_view','DESC')->get();
        $phimhot_sidebar = Movie::with('rating')->where('phim_hot',1)->where('status',1)->orderBy('port_view','DESC')->take('20')->get();
        $phimhot_trailer = Movie::where('resolution',5)->where('status',1)->orderBy('ngaycapnhat','DESC')->take('10')->get();

        $newDay = Carbon::now('Asia/Ho_Chi_Minh')->subdays(31);
        $phimnew_new = Movie::where('releasedate','>=', $newDay)->where('resolution','<>','5')->where('status',1)->orderBy('releasedate','DESC')->take('10')->get();

        $category = Category::orderBy('position','ASC')->where('status',1)->get();
        $genre = Genre::orderBy('id','DESC')->get();
        $country = Country::orderBy('id','DESC')->get();
        $category_home = Category::with('movie')->orderBy('position','ASC')->where('status',1)->get();

        $movie = Movie::with('category','genre','country','movie_genre','rating')->where('status',1)->first();
        $movie_rating = Movie::with('category','genre','country','movie_genre','rating')->where('status',1)->get();


     
        //     $rating  = Rating::where('movie_id',$movie->id)->avg('rating');
        
        // $rating = round($rating);
        

        return view('pages.home', compact('category','genre','country','category_home','phimhot','phimhot_sidebar','phimhot_trailer', 'phimnew_new'));
    }
    public function category($slug)
    {
        if (isset($_GET['search'])) {
            $search = $_GET['search'];
            $category = Category::orderBy('position','ASC')->where('status',1)->get();
            $genre = Genre::orderBy('id','DESC')->get();
            $country = Country::orderBy('id','DESC')->get();
            $phimhot_sidebar = Movie::where('phim_hot',1)->where('status',1)->orderBy('port_view','DESC')->take('20')->get();
            $phimhot_trailer = Movie::where('resolution',5)->where('status',1)->orderBy('ngaycapnhat','DESC')->take('10')->get();

            $movie_sr = Movie::where('title','LIKE','%'.$search.'%')->orderBy('ngaycapnhat','DESC')->paginate(40);

            $newDay = Carbon::now('Asia/Ho_Chi_Minh')->subdays(31);
            $phimnew_new = Movie::where('releasedate','>=', $newDay)->where('status',1)->orderBy('releasedate','DESC')->take('10')->get();
            return view('pages.timkiem', compact('category','genre','country','search','movie_sr','phimhot_sidebar','phimhot_trailer', 'phimnew_new'));

        } else {

            $category = Category::orderBy('position', 'ASC')->where('status', 1)->get();
            $genre = Genre::orderBy('id', 'DESC')->get();
            $country = Country::orderBy('id', 'DESC')->get();
            $phimhot_sidebar = Movie::where('phim_hot',1)->where('status',1)->orderBy('port_view','DESC')->take('20')->get();
            $phimhot_trailer = Movie::where('resolution', 5)->where('status', 1)->orderBy('ngaycapnhat', 'DESC')->take('10')->get();
            $cate_slug = Category::where('slug', $slug)->first();
            $movie = Movie::where('category_id', $cate_slug->id)->orderBy('ngaycapnhat', 'DESC')->paginate(40);
            $newDay = Carbon::now('Asia/Ho_Chi_Minh')->subdays(31);
            $phimnew_new = Movie::where('releasedate','>=', $newDay)->where('status',1)->orderBy('releasedate','DESC')->take('10')->get();
            return view('pages.category', compact('category', 'genre', 'country', 'cate_slug', 'movie', 'phimhot_sidebar', 'phimhot_trailer', 'phimnew_new'));
        }
    }



    public function year($year){
        $category = Category::orderBy('position','ASC')->where('status',1)->get();
        $genre = Genre::orderBy('id','DESC')->get();
        $country = Country::orderBy('id','DESC')->get();
       $phimhot_sidebar = Movie::where('phim_hot',1)->where('status',1)->orderBy('port_view','DESC')->take('20')->get();
        $phimhot_trailer = Movie::where('resolution',5)->where('status',1)->orderBy('ngaycapnhat','DESC')->take('10')->get();

        $year = $year;
        $movie = Movie::where('year',$year)->orderBy('ngaycapnhat','DESC')->paginate(40);
        $newDay = Carbon::now('Asia/Ho_Chi_Minh')->subdays(31);
        $phimnew_new = Movie::where('releasedate','>=', $newDay)->where('status',1)->orderBy('releasedate','DESC')->take('10')->get();
        return view('pages.year', compact('category','genre','country','year','movie','phimhot_sidebar','phimhot_trailer', 'phimnew_new'));
    }
     public function tag($tag){
        $category = Category::orderBy('position','ASC')->where('status',1)->get();
        $genre = Genre::orderBy('id','DESC')->get();
        $country = Country::orderBy('id','DESC')->get();
        $phimhot_sidebar = Movie::where('phim_hot',1)->where('status',1)->orderBy('port_view','DESC')->take('20')->get();
        $phimhot_trailer = Movie::where('resolution',5)->where('status',1)->orderBy('ngaycapnhat','DESC')->take('10')->get();

        $tag = $tag;
        $movie = Movie::where('tags','LIKE','%'.$tag.'%')->orderBy('ngaycapnhat','DESC')->paginate(40);
        $newDay = Carbon::now('Asia/Ho_Chi_Minh')->subdays(31);
        $phimnew_new = Movie::where('releasedate','>=', $newDay)->where('status',1)->orderBy('releasedate','DESC')->take('10')->get();
        return view('pages.tag', compact('category','genre','country','tag','movie','phimhot_sidebar','phimhot_trailer', 'phimnew_new'));
    }
    public function genre($slug){
        $category = Category::orderBy('position','ASC')->where('status',1)->get();
        $genre = Genre::orderBy('id','DESC')->get();
        $country = Country::orderBy('id','DESC')->get();
        $phimhot_sidebar = Movie::where('phim_hot',1)->where('status',1)->orderBy('port_view','DESC')->take('20')->get();

        $phimhot_trailer = Movie::where('resolution',5)->where('status',1)->orderBy('ngaycapnhat','DESC')->take('10')->get();

        $genre_slug = Genre::where('slug',$slug)->first();
        $movie_genre = Movie_Genre::where('genre_id',$genre_slug->id)->get();
        $many_genre= [];
        foreach($movie_genre as $key => $movi){
            $many_genre[] = $movi->movie_id;

        }
        $movie = Movie::whereIn('id',$many_genre)->orderBy('ngaycapnhat','DESC')->paginate(40);
        $newDay = Carbon::now('Asia/Ho_Chi_Minh')->subdays(31);
        $phimnew_new = Movie::where('releasedate','>=', $newDay)->where('status',1)->orderBy('releasedate','DESC')->take('10')->get();
        return view('pages.genre', compact('category','genre','country','genre_slug','movie','phimhot_sidebar','phimhot_trailer', 'phimnew_new'));
    }
    public function country($slug){
        $category = Category::orderBy('position','ASC')->where('status',1)->get();
        $genre = Genre::orderBy('id','DESC')->get();
        $country = Country::orderBy('id','DESC')->get();
        $phimhot_sidebar = Movie::where('phim_hot',1)->where('status',1)->orderBy('port_view','DESC')->take('20')->get();
        $phimhot_trailer = Movie::where('resolution',5)->where('status',1)->orderBy('ngaycapnhat','DESC')->take('10')->get();

        $country_slug = Country::where('slug',$slug)->first();
        $movie = Movie::where('country_id',$country_slug->id)->orderBy('ngaycapnhat','DESC')->paginate(40);
        $newDay = Carbon::now('Asia/Ho_Chi_Minh')->subdays(31);
        $phimnew_new = Movie::where('releasedate','>=', $newDay)->where('status',1)->orderBy('releasedate','DESC')->take('10')->get();
        return view('pages.country', compact('category','genre','country','country_slug','movie','phimhot_sidebar','phimhot_trailer', 'phimnew_new'));
    }
    public function movie($slug){
        if (isset($_GET['search'])) {
            $search = $_GET['search'];
            $category = Category::orderBy('position','ASC')->where('status',1)->get();
            $genre = Genre::orderBy('id','DESC')->get();
            $country = Country::orderBy('id','DESC')->get();
            $phimhot_sidebar = Movie::where('phim_hot',1)->where('status',1)->orderBy('port_view','DESC')->take('20')->get();
            $phimhot_trailer = Movie::where('resolution',5)->where('status',1)->orderBy('ngaycapnhat','DESC')->take('10')->get();

            $movie_sr = Movie::where('title','LIKE','%'.$search.'%')->orderBy('ngaycapnhat','DESC')->paginate(40);

            $newDay = Carbon::now('Asia/Ho_Chi_Minh')->subdays(31);
            $phimnew_new = Movie::where('releasedate','>=', $newDay)->where('status',1)->orderBy('releasedate','DESC')->take('10')->get();
            return view('pages.timkiem', compact('category','genre','country','search','movie_sr','phimhot_sidebar','phimhot_trailer', 'phimnew_new'));

        } else {
        $category = Category::orderBy('position','ASC')->where('status',1)->get();
        $genre = Genre::orderBy('id','DESC')->get();
        $country = Country::orderBy('id','DESC')->get();
        $phimhot_sidebar = Movie::where('phim_hot',1)->where('status',1)->orderBy('port_view','DESC')->take('20')->get();
        $phimhot_trailer = Movie::where('resolution',5)->where('status',1)->orderBy('ngaycapnhat','DESC')->take('10')->get();
        $movie = Movie::with('category','genre','country','movie_genre')->where('slug',$slug)->where('status',1)->first();
        $episode_tapdau = Episode::with('movie')->where('movie_id',$movie->id)->orderBy('episode','ASC')->take('1')->first();
        $related = Movie::with('category','genre','country')->where('category_id',$movie->category->id)->orderBy(DB::raw('RAND()'))->whereNotIn('slug',[$slug])->get();
        $episode = Episode::with('movie')->where('movie_id',$movie->id)->orderBy('episode','DESC')->take(3)->get();

        $episode_current_list = Episode::with('movie')->where('movie_id',$movie->id)->get();
        $episode_current_list_count = $episode_current_list->count();

        $rating  = Rating::where('movie_id',$movie->id)->avg('rating');
        
        $rating = round($rating);
     
        $count_total= Rating::where('movie_id',$movie->id)->count();


        // $port_view->port_view= rand(999,9999);

        $newDay = Carbon::now('Asia/Ho_Chi_Minh')->subdays(31);
        $phimnew_new = Movie::where('releasedate','>=', $newDay)->where('resolution','<>','5')->where('status',1)->orderBy('releasedate','DESC')->take('10')->get();
        return view('pages.movie', compact('category','genre','country','movie','related','phimhot_sidebar','phimhot_trailer','episode','episode_tapdau','episode_current_list_count','rating','count_total', 'phimnew_new'));
    }
}
    public function add_rating(Request $request){
        $data = $request->all();
        $ip_address = $request->ip();
        $rating_count = Rating::where('movie_id',$data['movie_id'])->where('ip_address',$ip_address)->count();

        if($rating_count>0){
            echo 'exist';
        }else{
            $rating = new Rating();
            $rating->movie_id = $data['movie_id'];
            $rating->rating = $data['index'];
            $rating->ip_address = $ip_address;
            $rating->save();
            echo 'done';
        }
    }
    public function watch($slug,$tap){
        $category = Category::orderBy('position','ASC')->where('status',1)->get();
        $genre = Genre::orderBy('id','DESC')->get();
        $country = Country::orderBy('id','DESC')->get();
        $phimhot_sidebar = Movie::where('phim_hot',1)->where('status',1)->orderBy('port_view','DESC')->take('20')->get();
        $phimhot_trailer = Movie::where('resolution',5)->where('status',1)->orderBy('ngaycapnhat','DESC')->take('10')->get();
        $movie = Movie::with('category','genre','country','movie_genre')->where('slug',$slug)->where('status',1)->first();
        $related = Movie::with('category','genre','country')->where('category_id',$movie->category->id)->orderBy(DB::raw('RAND()'))->whereNotIn('slug',[$slug])->get();
        $port_view = Movie::where('id',$movie->id)->first();
        $port_view->port_view = $port_view->port_view+1;

        $port_view->save();

        if(isset($tap)){
            $tapphim = $tap;

            $tapphim = substr($tap,4,20);

            $episode = Episode::where('movie_id',$movie->id)->where('episode',$tapphim)->first();
        }else{
            $tapphim=1;
        }
        $newDay = Carbon::now('Asia/Ho_Chi_Minh')->subdays(31);
        $phimnew_new = Movie::where('releasedate','>=', $newDay)->where('status',1)->orderBy('releasedate','DESC')->take('10')->get();
        return view('pages.watch',compact('category','genre','country','movie','phimhot_sidebar','phimhot_trailer','episode','tapphim','related', 'phimnew_new'));
    }
    public function episode(){
        return view('pages.episode');
    }
    public function hienrin(){
        return view('pages.hienrin');
    }

    public function sinhnhatem(){
        return view('pages.sinhnhatem');
    }
    public function sinhnhathien(){
        return view('pages.sinhnhathien');
    }
    
 
}


