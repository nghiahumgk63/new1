<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Movie;
use App\Models\Category;
use App\Models\Genre;
use App\Models\Country;
use App\Models\Movie_Genre;
use App\Models\Episode;
use Carbon\Carbon;
use Storage;
use File;
class MovieController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $list = Movie::with('category','movie_genre','country','genre')->withCount('episode')->orderBy('id','DESC')->get();

        

        $path = public_path(). "/json/";

        if(!is_dir($path)){ 
            mkdir($path,0777,true);
        }
        File::put($path.'movies.json',json_encode($list));

        return view('admincp.movie.index', compact('list'));
    }
    

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $category = Category::pluck('title','id');
        $genre = Genre::pluck('title','id');
        $country = Country::pluck('title','id');
        $list_genre = Genre::all();
        return view('admincp.movie.form', compact('category','genre','country','list_genre'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function update_year(Request $request){
        $data = $request->all();
        $movie = Movie::find($data['id_phim']);
        $movie->year = $data['year'];
        $movie->save();
    }  
    public function update_season(Request $request){
        $data = $request->all();
        $movie = Movie::find($data['id_phim']);
        $movie->season = $data['season'];
        $movie->save();
    }  
    public function update_topview(Request $request){
        $data = $request->all();
        $movie = Movie::find($data['id_phim']);
        $movie->topview = $data['topview'];
        $movie->save();
    }
    public function store(Request $request)
    {
        $data = $request->all();
        $data = $request->validate(
            [
                'title'=>'required|unique:genres|max:255',
                'slug'=>'required|unique:genres|max:255',
                'description'=>'required',
                'status'=>'required',
                'tags'=>'required',
                'trailer'=>'required',
                'sotap'=>'required',
                'thoiluong'=>'required',
                'phude'=>'required',
                'name_eng'=>'required',
                'phim_hot'=>'required',
                'thuocphim'=>'required',
                'resolution'=>'required',
                'category_id'=>'required',
                'genre'=>'required',
                'country_id'=>'required',
                'filmstudio'=>'nullable',
                'director'=>'nullable',
                'movieactor'=>'nullable',                
                'releasedate'=>'nullable',
                'danhgia'=>'nullable',
            ],[
                'title.unique'=>'T??n phim n??y ???? c?? xin ??i???n t??n kh??c',
                'slug.unique'=>'T??n slug n??y ???? c?? xin ??i???n slug kh??c',
                'title.required'=>'B???n ch??a nh???p t??n th??? lo???i n??',
                'slug.required'=>'B???n ch??a nh???p slug cho th??? lo???i n??',
                'description.required'=>'B???n ch??a nh???p m?? t??? n??',
                'trailer.required'=> 'B???n ch??a nh???p link trailer c???a phim n??',
            ]
        );
        $movie = new Movie();
        $movie->title = $data['title'];
        $movie->tags = $data['tags'];
        $movie->filmstudio = $data['filmstudio'];
        $movie->director = $data['director'];
        $movie->danhgia = $data['danhgia'];
        $movie->movieactor = $data['movieactor'];
        $movie->releasedate = $data['releasedate'];
        $movie->trailer = $data['trailer'];
        $movie->sotap = $data['sotap'];
        $movie->thoiluong = $data['thoiluong'];
        $movie->slug = $data['slug'];
        $movie->phude = $data['phude'];
        $movie->name_eng = $data['name_eng'];
        $movie->phim_hot = $data['phim_hot'];
        $movie->thuocphim = $data['thuocphim'];
        $movie->resolution = $data['resolution'];
        $movie->description = $data['description'];
        $movie->status = $data['status'];
        $movie->category_id = $data['category_id'];
        
        foreach($data['genre'] as $key => $gen){
        $movie->genre_id = $gen[0];
        }

        // $movie->genre_id = $data['genre_id'];

        $movie->country_id = $data['country_id'];
        $movie->ngaytao = Carbon::now('Asia/Ho_Chi_Minh');
        $movie->ngaycapnhat = Carbon::now('Asia/Ho_Chi_Minh');

        $get_image = $request->file('image');
       
        if($get_image){

            $get_name_image = $get_image->getClientOriginalName();
            $name_image = current(explode('.',$get_name_image));
            $new_image = $name_image.rand(0,9999).'.'.$get_image->getClientOriginalExtension();
            $get_image->move('uploads/movie/',$new_image);
            $movie->image = $new_image;
        }
        $movie->save();
        //them nhieu the loai cho phim
        $movie->movie_genre()->attach($data['genre']);
        toastr()->success('B???n ???? th??m th??nh c??ng', 'Phim');
        return redirect()->route('movie.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Movie $movie)
    {

        return view('admincp.movie.detail', compact('movie'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
         $list_genre = Genre::all();
        $category = Category::pluck('title','id');
        $genre = Genre::pluck('title','id');
        $country = Country::pluck('title','id');
        $movie =  Movie::find($id);
        $movie_genre = $movie->movie_genre;
        return view('admincp.movie.form', compact('category','genre','country','movie','list_genre','movie_genre'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $data = $request->all();
        $movie = Movie::find($id);
        $movie->title = $data['title'];
        $movie->tags = $data['tags'];
        $movie->filmstudio = $data['filmstudio'];
        $movie->director = $data['director'];
        $movie->movieactor = $data['movieactor'];
        $movie->releasedate = $data['releasedate'];
        $movie->trailer = $data['trailer'];
        $movie->danhgia = $data['danhgia'];
        $movie->sotap = $data['sotap'];
        $movie->thoiluong = $data['thoiluong'];
        $movie->slug = $data['slug'];
        $movie->phude = $data['phude'];
        $movie->resolution = $data['resolution'];
        $movie->name_eng = $data['name_eng'];
        $movie->phim_hot = $data['phim_hot'];
        $movie->thuocphim = $data['thuocphim'];
        $movie->description = $data['description'];
        $movie->status = $data['status'];
        $movie->category_id = $data['category_id'];
        // $movie->genre_id = $data['genre_id'];
        $movie->country_id = $data['country_id'];
        $movie->ngaycapnhat = Carbon::now('Asia/Ho_Chi_Minh');

        $get_image = $request->file('image');
        foreach($data['genre'] as $key => $gen){
        $movie->genre_id = $gen[0];
        }

        if($get_image){
            if(file_exists('uploads/movie/'.$movie->image)){
                unlink('uploads/movie/'.$movie->image);
            }else{
            $get_name_image = $get_image->getClientOriginalName();
            $name_image = current(explode('.',$get_name_image));
            $new_image = $name_image.rand(0,9999).'.'.$get_image->getClientOriginalExtension();
            $get_image->move('uploads/movie/',$new_image);
            $movie->image = $new_image;
        }
        }
        $movie->save();
        $movie->movie_genre()->sync($data['genre']);
       return redirect()->route('movie.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $movie = Movie::find($id);
        if(file_exists('uploads/movie/'.$movie->image)){
            unlink('uploads/movie/'.$movie->image);
        }
         Movie_Genre::whereIn('movie_id',[$movie->id])->delete();
         Episode::whereIn('movie_id',[$movie->id])->delete();
        $movie->delete();
        return redirect()->back();
    }
    public function filter_topview(Request $request){
        $data = $request->all();
        $movie = Movie::where('topview',$data['value'])->orderBy('ngaycapnhat','DESC')->take(20)->get();
        $output = '';
        foreach($movie as $key => $mov){
            if($mov->resolution==0){
                $text = 'HD';
            }elseif($mov->resolution==1){
                $text = 'SD';
            }elseif($mov->resolution==2){
                $text = 'HDCam';
            }elseif($mov->resolution==3){
                $text = 'Cam';
            }elseif($mov->resolution==4){
                $text = 'FullHD';
            }else{
                $text = 'Trailer';
            }
            $output.='<div class="item post-37176">
                              <a href="'.url('phim/'.$mov->slug).'" title="'.$mov->title.'">
                                 <div class="item-link">
                                    <img src="'.url('uploads/movie/'.$mov->image).'" class="lazy post-thumb" alt="'.$mov->title.'" title="'.$mov->title.'" />
                                    <span class="is_trailer">'.$text.'</span>
                                 </div>
                                 <p class="title">'.$mov->title.'</p>
                              </a>
                              <div class="viewsCount" style="color: #9d9d9d;">'.$mov->port_view.' l?????t xem</div>
                              <div style="float: left;">
                              <ul class=" list-inline"  title="Average Rating" style="margin-top:-10px;">';
                                  for($count=1; $count<=5; $count++){
 
                                     $output.='<li title="star_rating" style="font-size:20px;color: #ffcc00;padding-left: 0px;padding-right: 0px; ">&#9733;</li>';
                                 }
                                
                              $output.='</ul>
                                 <span class="user-rate-image post-large-rate stars-large-vang" style="display: block;/* width: 100%; */">
                                 <span style="width: 0%"></span>
                                 </span>
                              </div>
                           </div> ';
        }

    
       echo $output;

    }
    public function filter_default(Request $request){
        $data = $request->all();
        $movie = Movie::where('topview',0)->orderBy('ngaycapnhat','DESC')->take(20)->get();
        $output = ' ';
        foreach($movie as $key => $mov){
            if($mov->resolution==0){
                $text = 'HD';
            }elseif($mov->resolution==1){
                $text = 'SD';
            }elseif($mov->resolution==2){
                $text = 'HDCam';
            }elseif($mov->resolution==3){
                $text = 'Cam';
            }elseif($mov->resolution==4){
                $text = 'FullHD';
            }else{
                $text = 'Trailer';
            }
            $output.='<div class="item post-37176">
                              <a href="'.url('phim/'.$mov->slug).'" title="'.$mov->title.'">
                                 <div class="item-link">
                                    <img src="'.url('uploads/movie/'.$mov->image).'" class="lazy post-thumb" alt="'.$mov->title.'" title="'.$mov->title.'" />
                                    <span class="is_trailer">'.$text.'</span>
                                 </div>
                                 <p class="title">'.$mov->title.'</p>
                              </a>
                              <div class="viewsCount" style="color: #9d9d9d;">'.$mov->port_view.' l?????t xem</div>
                              <div style="float: left;">
                              <ul class=" list-inline"  title="Average Rating" style="margin-top:-10px;">';
                                  for($count=1; $count<=5; $count++){
 
                                     $output.='<li title="star_rating" style="font-size:20px;color: #ffcc00;padding-left: 0px;padding-right: 0px; ">&#9733;</li>';
                                 }
                                 
                                
                              $output.='</ul>
                                 <span class="user-rate-image post-large-rate stars-large-vang" style="display: block;/* width: 100%; */">
                                 <span style="width: 0%"></span>
                                 </span>
                              </div>
                           </div> ';
        }
    
       echo $output;

    }
}
