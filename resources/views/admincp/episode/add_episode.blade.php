@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
              
                <div class="card-header">Quản Lý Tập phim</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
                    @if(!isset($episode))
                        {!! Form::open(['route'=>'episode.store','method'=>'POST','enctype'=>'multipart/form-data']) !!}
                    @else
                        {!! Form::open(['route'=>['episode.update',$episode->id],'method'=>'PUT','enctype'=>'multipart/form-data']) !!}
                    @endif
                        <div class="form-group">
                            {!! Form::label('movie_title', 'Tên phim', []) !!}
                            {!! Form::text('movie_title', isset($movie) ? $movie->title : '', ['class'=>'form-control select-movie','readonly']) !!}
                            {!! Form::hidden('movie_id', isset($movie) ? $movie->id : '') !!}
                        </div>
                        <div class="form-group">
                            {!! Form::label('link', 'Link phim', []) !!}
                            {!! Form::text('link', isset($episode) ? $episode->linkphim : '', ['class'=>'form-control','placeholder'=>'...']) !!}
                        </div>

                        {{-- @if(isset($episode))
                        <div class="form-group">
                            {!! Form::label('episode', 'Tập Phim', []) !!}
                            {!! Form::text('episode', isset($episode) ? $episode->episode : '', ['class'=>'form-control','placeholder'=>'...',isset($episode) ? 'readonly' : '']) !!}
                        </div>
                        @else
                         <div class="form-group">
                            {!! Form::label('episode', 'Tập phim', []) !!}

                            {!! Form::selectRange('episode',1,$movie->sotap,$movie->sotpa,['class'=>'form-control','id'=>'show_movie']) !!}
                        </div>
                        @endif --}}
                       
                        <div class="form-group">
                            {!! Form::label('episode', 'Tập phim', []) !!}
                           
                                @if($movie->thuocphim=='phimbo')
                                {!! Form::selectRange('episode',1,$movie->sotap,$movie->sotpa,['class'=>'form-control','id'=>'show_movie']) !!}
                                @else
                                 <select name="episode" class="form-control" id="show_movie">
                                <option value="HD">HD</option>
                               <option value="FullHD">FullHD</option>
                               <option value="Cam">Cam</option>
                               <option value="HDCam">HDCam</option>
                               </select>
                                @endif
                            
                        </div>
                        
                       

                       
                        @if(!isset($episode))
                            {!! Form::submit('Thêm Tập Phim', ['class'=>'btn btn-success']) !!}
                        @else
                            {!! Form::submit('Cập Nhật Tập Phim', ['class'=>'btn btn-success']) !!}
                        @endif
                    {!! Form::close() !!}
                </div>
            </div>
            
        </div>
    </div>
</div>


<div class="container-fluid"style="margin-right: 0px;padding-left: 300px;">
    <div class="row justify-content-center">
        <div class="col-md-12" style="overflow: scroll;height: 850px;">
           
            <table class="table-striped" id="datamovie">
              <thead>
                <tr>
                  <th scope="col">#</th>
                  <th scope="col">Tên phim</th>
                  <th scope="col">Hình ảnh</th>
                  <th scope="col">Tập phim</th>
                  <th scope="col">link phim</th>
                  <!-- <th scope="col">Trạng thái</th> -->
                  <th scope="col">Quản lý</th>
                </tr>
              </thead>
              <tbody class="order_position_ep">
                @foreach($list_episode as $key => $episode)
                
                <tr id="{{$episode->id}}">
                  <th scope="row">{{$key+1}}</th>
                  <td>{{$episode->movie->title}}</td>
                  <td><img width="100" src="{{asset('uploads/movie/'.$episode->movie->image)}}"></td>
                  <td>{{$episode->episode}}</td>
                  <td><!-- {!! $episode->linkphim !!} -->
                    <a href="{{url('xem-phim/'.$episode->movie->slug.'/tap-'.$episode->episode)}}" target="_bank">Tập: {{$episode->episode}} || {{$episode->movie->title}}
                  </td>
                 <!--  <td>
                    @if($episode->status)
                        Hiển thị
                    @else
                        Không hiển thị
                    @endif
                  </td> -->
                  <td style="width: 100px;"> 
                      {!! Form::open(['method'=>'DELETE','class'=>'form-cate','route'=>['episode.destroy',$episode->id],'onsubmit'=>'return confirm("Bạn có chắc muốn xóa?")']) !!}
                        {!! Form::submit('Xóa', ['class'=>'btn btn-danger btn-sm']) !!}
                      {!! Form::close() !!}
                      <a href="{{route('episode.edit',$episode->id)}}" class="btn btn-warning btn-sm">Sửa</a>
                  </td>
                </tr>
                
                @endforeach
              </tbody>
            </table>
        </div>
    </div>
</div>
@endsection
