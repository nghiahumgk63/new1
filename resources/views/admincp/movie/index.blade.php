@extends('layouts.app')
@section('content')
<div class="container-fluid" style="margin-right: 0px;padding-left: 300px;">
    <div class="row justify-content-center">
        <div class="col-md-12" style="overflow: scroll;height: 850px;">
            <!-- <a href="{{route('movie.create')}}" class="btn btn-primary">Thêm Phim</a> -->
            <table class="table" id="datamovie" >
              <thead>
                <tr>
                  <th scope="col">STT</th>
                  <th scope="col">Tên phim</th>
{{--                   <th scope="col">tập phim</th>
 --}}                  {{-- <th scope="col">Tags</th>
                  <th scope="col">Thời lượng phim</th> --}}
                  <th scope="col">Hình ảnh</th>
                  {{-- <th scope="col">Phim hot</th>
                  <th scope="col">Định dạng</th>
                  <th scope="col">Phụ Đề</th> --}}
                  <!-- <th scope="col">Mô tả</th> -->
                  {{-- <th scope="col">Đường dẫn</th> --}}
                 
{{--                   <th scope="col">Danh mục</th>
 --}}                  {{-- <th scope="col">Thuộc Phim</th> --}}
                  <th scope="col">Thể loại</th>
{{--                   <th scope="col">Quốc gia</th>
 --}}                  <th scope="col">Số tập</th>
                  {{-- <th scope="col">Ngày tạo</th>
                  <th scope="col">Ngày cập nhật</th> --}}
                  <th scope="col">Trạng thái</th>
                  <th scope="col" width=" 60px">Năm</th>
                  <th scope="col">Season</th>
                  <th scope="col" width=" 92px">Top Views</th>
                  
                  <th scope="col" width=" 280px">Quản lý</th>

                  
                </tr>
              </thead>
              <tbody>
                @foreach($list as $key => $cate)
                <tr>
                  <th scope="row">{{$key + 1}}</th>
                  <td>{{$cate->title}} <br><strong>(Phim {{$cate->country->title}},@if($cate->thuocphim=='phimle')
                      phim lẻ
                    @else
                      phim bộ
                    @endif)</strong></td>
{{--                   <td><a href="{{route('add-episode',[$cate->id])}}" class="btn btn-primary btn-sm">Thêm tập phim</a></td>
 --}}                  {{-- <td>
                    @if($cate->tags!=NULL)
                      {{substr($cate->tags,0,50)}}...
                    @else
                      chưa có từ khóa cho phim
                    @endif
                    

                  </td>
                  <td>{{$cate->thoiluong}}</td> --}}
                  <td><img width="100" src="{{asset('uploads/movie/'.$cate->image)}}"></td>
                  {{-- <td>
                    @if($cate->phim_hot==0)
                        Không
                    @else
                        Có
                    @endif
                  </td>
                  <td>
                    @if($cate->resolution==0)
                        HD
                    @elseif($cate->resolution==1)
                    SD
                    @elseif($cate->resolution==2)
                    HDCam
                    @elseif($cate->resolution==3)
                    Cam
                    @elseif($cate->resolution==4)
                    FullHD
                    @else
                        Trailer
                    @endif
                  </td>
                  <td>
                    @if($cate->phude==0)
                        Phụ đề                  
                    @else
                        Thuyết minh
                    @endif
                  </td> --}}
                {{--    <td>{{$cate->description}}</td>  --}}
                 {{--  <td>{{$cate->slug}}</td> --}}
                  
                  {{-- <td>{{$cate->genre->title}}</td> --}}
                  {{-- <td>
                    @if($cate->thuocphim=='phimle')
                      phim lẻ
                    @else
                      phim bộ
                    @endif
                  </td> --}}
                   <td>
                  @foreach($cate->movie_genre as  $gen)
                  <span class="badge badge-dark">{{$gen->title}}</span>
                  @endforeach
                  </td>

                  {{-- <td>{{$cate->country->title}}</td> --}}
                  <td>{{$cate->episode_count}}/{{$cate->sotap}}</td>
                {{--   <td>{{$cate->ngaytao}}</td>
                  <td>{{$cate->ngaycapnhat}}</td> --}}

                  <td>
                    @if($cate->status)
                        Hiển thị
                    @else
                        Không hiển thị
                    @endif
                  </td>

                  <td>
                    <form method="POST">
                      @csrf
                    {!! Form::selectYear('year',1995,2022,isset($cate->year) ? $cate->year : '' ,['class'=>'select-year form-control','id'=>$cate->id]) !!}
                  </form>
                  </td>
                  <td>
                    <form method="POST">
                      @csrf
                    {!! Form::selectRange('season',0,20,isset($cate->season) ? $cate->season : '0'  ,['class'=>'select-season form-control','id'=>$cate->id]) !!}
                  </form>
                  </td>
                  <td>
                    {!! Form::select('topview', ['3'=>'Mặc đinh','0'=>'Ngày','1'=>'Tuần','2'=>'Tháng'], isset($cate->topview) ? $cate->topview : '', ['class'=>'select-topview form-control','id'=>$cate->id]) !!}
                  </td>
                  <td>
                      {!! Form::open(['method'=>'DELETE', 'class'=>'form-cate','route'=>['movie.destroy',$cate->id],'onsubmit'=>'return confirm("Bạn có chắc muốn xóa?")']) !!}
                        {!! Form::submit('Xóa', ['class'=>'btn btn-danger btn-sm']) !!}
                      {!! Form::close() !!}
                      <a href="{{route('movie.edit',$cate->id)}}" class="btn btn-warning btn-sm">Sửa</a>
                      <a href="{{route('add-episode',[$cate->id])}}" class="btn btn-primary btn-sm">Thêm tập phim</a>
                      <a href="#" class="btn btn-warning btn-sm show-detail-movie" data-title="{{ $cate->title }}" data-id="{{ $cate->id }}" data-toggle="modal" data-target=".bd-example-modal-lg">Chi tiết</a>
                  </td>
                </tr>
                @endforeach
              </tbody>
            </table>
        </div>
    </div>
</div>
<!-- Button trigger modal -->


<!-- Modal -->
<div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title title-show-movie-modal" id="exampleModalLongTitle">Chi tiết</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body show-detail-moive-modal">
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Trở lại</button>
      </div>
    </div>
  </div>
</div>
@endsection

