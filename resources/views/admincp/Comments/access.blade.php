@extends('layouts.app')

@section('content')

<div class="container-fluid" style="padding-left: 15%;">
    <div class="col-md-12 col-xs-12" style="text-align: center; " >
     <p style="font-weight: 700;" ><h1>Liệt kê truy cập</h1></p>
 <div id="myfirstchart" style="height: 250px;"></div>
       
   </div>
   <div class="col-md-12 col-xs-12" >
    {{-- <div id="myfirstchart" style="height: 250px;"></div>
       
   </div> --}}
    <div class="row justify-content-center" style="font-size:14px;">
        
       <div id="notifly-comment"></div>

       
            <table class="table table-bordered table-dark">
            <thead>
                <tr>
                    <th scope="col">Đang online</th>
                    <th scope="col">Tổng tháng trước</th>
                    <th scope="col">Tổng tháng này</th>
                    <th scope="col">Tổng một năm</th>
                    <th scope="col">Tổng truy cập</th>
                    
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>{{$visitors_count}}</td>
                    <td>{{$visitors_last_month_count}}</td>
                    <td>{{$visitors_thismonth_count}}</td>
                    <td>{{$visitors_year_count}}</td>
                    <td>{{$visitors_total}}</td>
                </tr>
            </tbody>
            </table>
        </div>
        <br/>
        <br/>
        <br/>
        <br/>
        <div class="col-md-4 col-xs-12" style="float:left;">
           <h1> <p style="text-align: center;">Thông kê sản phẩm</p></h1>
           <style type="text/css">
            .donut text{
               font-family: inherit;
           }
            }
           </style>
            <div id="donut" ></div>
        </div>
        <div class="col-md-7 col-xs-12" style="float:left;">
            <h1><p style="text-align: center;">Thông kê phim xem nhiều nhất</p></h1>
             <table class="table-striped table-bordered table-xemnhieu" style="width: 100%;">
                <thead id="thead-xemnhieu">
                <tr>
                    <th scope="col">Top</th>
                    <th scope="col">Tên Phim</th>
                    <th scope="col">lượt xem</th>        
                </tr>
            </thead>
            <tbody>
                 @foreach($list_view_port as $key => $moive_list)
                <tr id="{{$moive_list->id}}">
                    <td>{{$key + 1}}</td>
                    <td>{{$moive_list->title}}</td>
                    <td>{{$moive_list->port_view}} lượt xem</td>
                </tr>
                @endforeach
            </tbody>
             </table>
         
        </div>       
    </div>

@endsection
