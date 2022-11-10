<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Movie;
use App\Models\Episode;
use App\Models\Comment;
use Carbon\Carbon;

class EpisodeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
       $list_episode = Episode::with('movie')->orderBy('movie_id','DESC')->get();
       
         return view('admincp.episode.index',compact('list_episode'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $list_movie = Movie::orderBy('id','DESC')->pluck('title','id','thuocphim');
         return view('admincp.episode.form',compact('list_movie'));
    }

    public function add_episode($id){
        $list_episode = Episode::with('movie')->where('movie_id',$id)->orderBy('episode','DESC')->get();

        $list_movie = Movie::orderBy('id','DESC')->pluck('title','id','thuocphim');
        $movie = Movie::find($id);
      
      
       
         return view('admincp.episode.add_episode',compact('list_episode','movie','list_movie'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $data = $request->all();
        $ep = new Episode();
        $ep->movie_id = $data['movie_id'];
        $ep->linkphim = $data['link'];
        $ep->episode = $data['episode'];
        $ep->created_at = Carbon::now('Asia/Ho_Chi_Minh');
        $ep->updated_at = Carbon::now('Asia/Ho_Chi_Minh');
        toastr()->success('Bạn đã thêm thành công', 'Thêm tập phim');
        $ep->save();
        return redirect()->back();
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {

    
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $list_movie = Movie::orderBy('id','DESC')->pluck('title','id');
        $episode = Episode::find($id);

         return view('admincp.episode.form',compact('episode','list_movie'));
    }
    public function send_comment(Request $request){
        $id = $request->id;
        $movie_id = $request->movie_id;
        $title_phim = $request->title_phim;
        $slug_phim = $request->slug_phim;
        $comment_name = $request->comment_name;
        $comment_content = $request->comment_content;
        $comment = new Comment();
        $comment->id = $id;
        $comment->movie_id = $movie_id;
        $comment->title_phim = $title_phim;
        $comment->slug_phim = $slug_phim;

        $comment->comment_name = $comment_name;
        $comment->comment = $comment_content;
        
        $comment->save();

    }
     public function load_comment(Request $request){
            $id = $request->id;
             
            $comment = Comment::where('id',$id)->where('comment_status',0)->where('rep_comment','=',0)->get();
            $comment_rep = Comment::with('movie_episode','movie')->where('rep_comment','>',0)->orderBy('comment_id','DESC')->get();
            $output =  '';
           
            foreach($comment as $key => $comm){
                $output.= '
                        <div class="row style_comment" style="background-color:#b7b7b7" >
                           <div class="col-md-2">
                        <img src="'.url('/imgs/avatar_comment.png').'" class="img img-responsive img-thumbnail">
                           </div>
                           <div class="col-md-10" >
                              <p style="color:green;font-weight:600;float: left;
    margin-right: 50px;">@'.$comm->comment_name.'</p><p style="color:black;">'.$comm->comment_date.'</p>
                             <p style="color:black;">'.$comm->comment.' </p>
                           
                           </div>
                        </div><p></p> 
                        ';

                        foreach($comment_rep as $key => $rep_comment){
                            if($rep_comment->rep_comment == $comm->comment_id){
                       $output.=' 
                       <div class="row style_comment" style="background-color:aliceblue; margin-left:10%;" >
                           <div class="col-md-2">
                        <img src="'.url('/imgs/avatar_comment.png').'" class="img img-responsive img-thumbnail">
                           </div>
                           <div class="col-md-10" >
                              <p style="color:green;font-weight:600;float: left;
    margin-right: 50px;">@'.$rep_comment->comment_name.'</p><p style="color:black;">'.$rep_comment->comment_date.'</p>
                             <p style="color:black;">'.$rep_comment->comment.' </p>
                           
                           </div>
                        </div><p></p>';
                    }
                    }

                
            }
            
            echo $output;
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
        $ep =  Episode::find($id);
        $ep->movie_id = $data['movie_id'];
        $ep->linkphim = $data['link'];
        $ep->episode = $data['episode'];
        $ep->created_at = Carbon::now('Asia/Ho_Chi_Minh');
        $ep->updated_at = Carbon::now('Asia/Ho_Chi_Minh');
        
        $ep->save();
        return redirect()->to('episode');
    
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $episode = Episode::find($id)->delete();
        toastr()->error('Bạn đã xóa thành công', 'Xóa tập phim');
        return redirect()->to('episode');
    }
    public function select_movie(){
        $id = $_GET['id'];
        $movie = Movie::find($id);
        $output = '<option>--chọn tập phim--</option>';

        if($movie->thuocphim=='phimbo'){
            for($i=1;$i<=$movie->sotap;$i++){
            $output.=' <option value="'.$i.'">'.$i.'</option>';
             }
        }else{
            $output.=' <option value="HD">HD</option>
                       <option value="FullHD">FullHD</option>
                       <option value="Cam">Cam</option>
                       <option value="HDCam">HDCam</option>';
        }
            
            echo $output;
        }

     public function resorting_ep(Request  $request){
        $data = $request->all();

        foreach ($data['array_id'] as $key => $value) {
            $category = Episode::find($value);
            $category->position = $key;
            $category->save();
        }
    }
}
