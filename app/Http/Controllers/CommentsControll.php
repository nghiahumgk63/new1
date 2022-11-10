<?php

namespace App\Http\Controllers;
// namespace PragmaRX\Tracker\Vendor\Laravel\Controller;

use Illuminate\Http\Request;
use App\Models\Comment;
use App\Models\Episode;
use App\Models\Movie;
use App\Models\Category;
use App\Models\Genre;
use App\Models\Country;
use App\Models\access;
use Carbon\Carbon;
use DB;

class CommentsControll extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
       $list = Comment::with('movie_episode','movie')->where('rep_comment','=',0)->orderBy('comment_id','DESC')->get();
       $comment_rep = Comment::with('movie_episode','movie')->where('rep_comment','>',0)->orderBy('comment_id','DESC')->get();
       return view('admincp.comments.index', compact('list','comment_rep'));
    }
    public function access(){
        return view('admincp.comments.access');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function filter_by_date(Request $request){
        $data = $request->all();
        $form_date = $data['form_date'];
        $to_date = $data['to_date'];


        $get = access::whereBetween('date_access',[$form_date,$to_date])->orderBy('date_access','ASC')->get();

        foreach($get as $key => $val){
            $chart_data[] = array(
                'period' => $val->date_access,
                'number_access' => $val->count_access
            );
        }
        echo $data = json_encode($chart_data);
    }
    public function create(Request $request)
    {
        
        $user_ip_address = $request->ip();

        $early_last_month = Carbon::now('Asia/Ho_Chi_Minh')->subMonth()->startOfMonth()->toDateString();
        $end_of_last_month = Carbon::now('Asia/Ho_Chi_Minh')->subMonth()->endOfMonth()->toDateString();

        $early_this_month = Carbon::now('Asia/Ho_Chi_Minh')->startOfMonth()->toDateString();
        $oneyears = Carbon::now('Asia/Ho_Chi_Minh')->subdays(365)->toDateString();
        $now = Carbon::now('Asia/Ho_Chi_Minh')->toDateString();
        $lastweek = Carbon::now('Asia/Ho_Chi_Minh')->subWeekday(8)->toDateString();
        $lastweektoo = Carbon::now('Asia/Ho_Chi_Minh')->subWeekday(13)->toDateString();
        $thlastweektoo = Carbon::now('Asia/Ho_Chi_Minh')->subWeekday(18)->toDateString();
        $forlastweektoo = Carbon::now('Asia/Ho_Chi_Minh')->subWeekday(23)->toDateString();
        $fivelastweektoo = Carbon::now('Asia/Ho_Chi_Minh')->subWeekday(28)->toDateString();
        $weedday = Carbon::now('Asia/Ho_Chi_Minh')->subWeekday()->startOfweek()->toDateString();
       
        //5 tuần trước
        $visitors_of_fivelastweektoo = access::whereBetween('date_access',[$fivelastweektoo,$forlastweektoo])->get();
        $visitors_fivelastweektoo_count = $visitors_of_fivelastweektoo->count();
        //4 tuan truoc
        $visitors_of_forlastweektoo = access::whereBetween('date_access',[$forlastweektoo,$thlastweektoo])->get();
        $visitors_forlastweektoo_count = $visitors_of_forlastweektoo->count();
        //3 tuan truoc
        $visitors_of_thlastweektoo = access::whereBetween('date_access',[$thlastweektoo,$lastweektoo])->get();
        $visitors_thlastweektoo_count = $visitors_of_thlastweektoo->count();
//tuan truoc nua
        $visitors_of_lastweektoo = access::whereBetween('date_access',[$lastweektoo,$lastweek])->get();
        $visitors_lastweektoo_count = $visitors_of_lastweektoo->count();

//tuan nay
        $visitors_of_weedday = access::whereBetween('date_access',[$weedday,$now])->get();
        $visitors_weedday_count = $visitors_of_weedday->count();

//tuan truoc
        $visitors_of_lastweek = access::whereBetween('date_access',[$lastweek, $weedday])->get();
        $visitors_lastweek_count = $visitors_of_lastweek->count();


        //tong thang truoc
        $visitors_of_lastmonth = access::whereBetween('date_access',[ $early_last_month,$end_of_last_month])->get();
        $visitors_last_month_count = $visitors_of_lastmonth->count();

        //tong thang nay

        $visitors_of_thismonth = access::whereBetween('date_access',[$early_this_month,$now])->get();
        $visitors_thismonth_count = $visitors_of_thismonth->count();

        //tong nam

        $visitors_of_year = access::whereBetween('date_access',[$oneyears,$now])->get();
        $visitors_year_count = $visitors_of_year->count();
        //tat ca
        $visitors = access::all();
        $visitors_total = $visitors->count();

        //nguoi dang online
        $visitors_current = access::where('ip_address',$user_ip_address)->get();
        $visitors_count = $visitors_current->count();

        if($visitors_count<1){
            $visitors = new access();
            $visitors->ip_address = $user_ip_address;
            $visitors->date_access = Carbon::now('Asia/Ho_Chi_Minh')->toDateString();
            $visitors->save();
        }

        $category_count = Category::all()->count();
        $episode_count = Episode::all()->count();
        $genre_count  = Genre::all()->count();
        $movie_count =Movie::all()->count();
        $country_count=Country::all()->count();

        $list_view_port = Movie::orderBy('port_view','DESC')->take(10)->get();
 
       return view('admincp.comments.access' ,compact('visitors_last_month_count','visitors_thismonth_count','visitors_year_count','visitors_total','visitors_count','category_count','episode_count','genre_count','movie_count','country_count','list_view_port','visitors_lastweek_count','visitors_weedday_count','visitors_lastweektoo_count','visitors_thlastweektoo_count','visitors_forlastweektoo_count','visitors_fivelastweektoo_count'));
    }
    public function access_dev()
    {
        return view('admincp.comments.access');
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
         DB::table('comments')->where('id',$id)->delete();
       toastr()->warning('Bạn đã xóa thành công', 'Bình luận tập phim');
        return redirect()->back();
    }

     public function allow_comment(Request $request ){    
        $data = $request->all();
        $comment = Comment::find($data['comment_id']);
        // $comment = Comment::where('comment_id',$data['comment_id']);

        $comment->comment_status = $data['comment_status'];

        $comment->save();
    }
    public function rep_comment(Request $request){
        $data = $request->all();
        $comment = new Comment();
        $comment->comment = $data['comment'];
        $comment->id = $data['id'];
        $comment->rep_comment = $data['comment_id'];
        $comment->slug_phim = $data['slug_phim'];
        $comment->movie_id = $data['comment_episode_title'];
        $comment->title_phim = $data['title_phim'];
        $comment->comment_status = 0;
        $comment->comment_name = 'webphim366ngay';
        $comment->save();


    }
}
