@extends('layouts.app')

@section('content')
<div class="container-fluid" style="padding-left: 15%;">
    <div class="row justify-content-center" style="font-size:14px;">
       <div id="notifly-comment"></div>
       <h1><p>Liệt kê bình luận</p></h1>
       
            <table class="table" id="datamovie">
              <thead>
                <tr>
                  <th scope="col">Trạng thái</th>
                  <th scope="col">Tên người gửi</th>
                  <th scope="col">Bình Luận</th>
                  <th scope="col">Ngày gửi</th>
                  
                  <th scope="col">Tên Phim</th>
             
                  <th scope="col">Quản lý</th>
                </tr>
              </thead>
              <tbody>
                @foreach($list as $key => $comment2)

                <tr>
                  <th scope="row">
                    <form>
                        @csrf
                  @if($comment2->comment_status==1)
                        
                        <input type="button" data-comment_status="0" data-comment_id="{{$comment2->comment_id}}" id="{{$comment2->id}} " class="btn btn-primary btn-sm comment_duyet_btn " value="hiện" style="font-size: 12px;">
                    @else
                        
                        <input type="button" data-comment_status="1" data-comment_id="{{$comment2->comment_id}}" id="{{$comment2->id}} " class="btn btn-danger btn-sm comment_duyet_btn" value="Ẩn" style="font-size: 12px;">
                    @endif
                    </form>
                    </th>
                  <td style="color:green;font-weight:500; ">{{$comment2->comment_name}}</td>
                  <td>{{$comment2->comment}}
                    <ul>
                        Trả lời:
                        @foreach($comment_rep as $key => $rep_comment)
                            @if($rep_comment->rep_comment == $comment2->comment_id)
                                <li>{{$rep_comment->comment}}</li>
                            @endif
                        @endforeach    
                    </ul>
                    @if($comment2->comment_status==0)
                    
                    <input type="hidden" name="comment_episode_title" class="comment_episode_title" value="{{$comment2->movie_id}}">
                    <input type="hidden" name="title_phim" class="title_phim" value="{{$comment2->title_phim}}">
                    <input type="hidden" name="slug_phim" class="slug_phim" value="{{$comment2->slug_phim}}">
                    
                     <br/><textarea row="3" class="form-control reply_comment_{{$comment2->comment_id}}"></textarea>
                     <br/><button id="rep-comment" class="btn btn-primary btn-sm btn-reply-comment" data-id="{{$comment2->id}}"  data-comment_id="{{$comment2->comment_id}}" >Trả lời bình luận</button>
                     @endif
                  </td> 
                          
                  <td style="width: 100px">{{$comment2->comment_date}}</td>      
                  <td><a href="{{url('xem-phim/'.$comment2->slug_phim.'/tap-'.$comment2->movie_episode->episode)}}" target="_bank">{{$comment2->title_phim}}</a></td>
                  
                  <td>
                      {!! Form::open(['method'=>'DELETE','class'=>'form-cate','route'=>['comments.destroy',$comment2->id],'onsubmit'=>'return confirm("Bạn có chắc muốn xóa?")']) !!}
                       {!! Form::submit('Xóa', ['class'=>'btn btn-danger xoa-cate btn-sm']) !!}

                      {!! Form::close() !!}

                  </td>
                </tr>
                @endforeach
              </tbody>
            </table>
        </div>
    </div>
</div>
@endsection
