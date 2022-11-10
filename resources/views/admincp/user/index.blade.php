@extends('layouts.app')

@section('content')
<div class="container-fluid"style="margin-right: 0px;padding-left: 300px;">
    <div class="row justify-content-center">
        <div class="col-md-12" style="overflow: scroll;height: 850px;">
           
            <table class="table" id="datamovie">
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
              <tbody class="order_position">
               
                
                <tr id="">
                  <th scope="row"></th>
                  <td></td>
                  
                 
                  <td>
                      
                  </td>
                </tr>
                
               
              </tbody>
            </table>
        </div>
    </div>
</div>
@endsection
