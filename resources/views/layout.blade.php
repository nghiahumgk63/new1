<!DOCTYPE html>
<html lang="vi">
   <head>
      <meta charset="utf-8" />
      <meta content="width=device-width,initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
      <meta name="theme-color" content="#234556">
      <meta http-equiv="Content-Language" content="vi" />
      <meta content="VN" name="geo.region" />
      <meta name="DC.language" scheme="utf-8" content="vi" />
      <meta name="language" content="Việt Nam">
      <meta name="csrf-token" content="{{ csrf_token() }}" />

      <link rel="shortcut icon" href="{{asset('/imgs/logo.png')}}" type="image/x-icon" />
      <meta name="revisit-after" content="1 days" />
      <meta name='robots' content='index, follow, max-image-preview:large, max-snippet:-1, max-video-preview:-1' />
      <title>Phim hay 2021 - Xem phim hay nhất</title>
      <meta name="description" content="Phim hay 2021 - Xem phim hay nhất, xem phim online miễn phí, phim hot , phim nhanh" />
      <link rel="canonical" href="">
      <link rel="next" href="" />
      <meta property="og:locale" content="vi_VN" />
      <meta property="og:title" content="Phim hay 2020 - Xem phim hay nhất" />
      <meta property="og:description" content="Phim hay 2020 - Xem phim hay nhất, phim hay trung quốc, hàn quốc, việt nam, mỹ, hong kong , chiếu rạp" />
      <meta property="og:url" content="" />
      <meta property="og:site_name" content="Phim hay 2021- Xem phim hay nhất" />
      <meta property="og:image" content="" />
      <meta property="og:image:width" content="300" />
      <meta property="og:image:height" content="55" />
     <!--  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"> -->

     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">

      <link rel='dns-prefetch' href='//s.w.org' />

      <link rel='stylesheet' id='bootstrap-css' href='{{asset('css/bootstrap.min.css')}}' media='all' />
      <link rel='stylesheet' id='style-css' href='{{asset('css/style.css')}}' media='all' />
      <link rel='stylesheet' id='wp-block-library-css' href='{{asset('css/style.min.css')}}' media='all' />
      <script type='text/javascript' src='{{asset('js/jquery.min.js?ver=5.7.2')}}' id='halim-jquery-js'></script>
      <style type="text/css" id="wp-custom-css">
         .textwidget p a img {
         width: 100%;
         }
      </style>
      <style>
      #header .site-title {

      background-size: contain;
      text-indent: -9999px;
   }</style>
   <script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-6739412501954523"
     crossorigin="anonymous"></script>
   </head>
   <body class="home blog halimthemes halimmovies" data-masonry="" onload="show_data()">
      <header id="header">
         <div class="container">
            <div class="row" id="headwrap">
               <div class="col-md-3 col-sm-6 slogan">
                  <p class="site-title"><a class="logo" href="" title="phim hay ">Phim Hay</p>
                  </a>
               </div>
               <div class="col-md-5 col-sm-6 halim-search-form hidden-xs">
                  <div class="header-nav">
                     <div class="col-xs-12">
                        <form id="search-form-pc" name="halimForm" role="search" action="tim-kiem" method="GET">
                           <div class="form-group">
                              <div class="input-group col-xs-12" style="display: flex;">

                                 <style type="text/css">
                                    ul#result{
                                       position: absolute;
                                       z-index: 9999;
                                       background: #1b2d3c;
                                       width: 94%;
                                       padding: 10px;
                                       margin: 1px;
                                    }
                                    .header-nav img {
                                        max-width: 100%;
                                        margin: -49px 0;
                                        margin-left: -242px;
                                    }
                                               </style>


                                 <form action="{{url('tim-kiem')}}" method="GET">
                                    <img  src="{{asset('/imgs/logo.png')}}" style="width: 50%;height: 177px;" >
                                 <input style="margin-top: 40px;" id="timkiem" type="text" value="{{ request('search') ? request('search') : '' }}" name="search" class="form-control" placeholder="Tìm kiếm..." autocomplete="off">
                                 <!-- <button class="btn btn-primary">Tìm Kiếm</button> -->
                                 <!-- <i class="animate-spin hl-spin4 hidden"></i> -->
                                 </form>


                              </div>
                           </div>
                           <ul class="list-group" id="result" style="display: none;"></ul>
                        </form>

                        <ul class="ui-autocomplete ajax-results hidden"></ul>
                     </div>
                  </div>
               </div>
               <div class="col-md-4 hidden-xs" style="text-align: left;padding-top: 41px;">

                        <!-- <div id="get-bookmark" class="history">
                     <i class="bi bi-clock-history"></i><button class="btn btn-link" style="color:white;">Lịch sử đã xem</button>

                             </div> -->
                             <a href="#history" class="btn btn-primary history" style="border-radius: 16px;background-color: #1b2d3c;"><i class="bi bi-clock-history" style="margin-right: 6px;"></i>Lịch sử đã xem
                            </a>
<!--                   @guest
                  <div id="get-bookmark" class="box-shadow">
                            @if (Route::has('login'))

                                    <a class="nav-link" href="{{ route('login') }}">Đăng nhập</a>

                            @endif

                            @if (Route::has('register'))

                                    <a class="nav-link" href="{{ route('register') }}">Đăng ký</a>

                            @endif

</div>
                        @else
                           <div id="get-bookmark" class="box-shadow">
                                 <i class="fas fa-user"></i><a href="{{ route('logout') }}"><span>{{ Auth::user()->name }}</span><a/>




                                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ route('logout') }}
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                        @method('PUT')
                                        @csrf
                                    </form>
                                </div>

                                </div>
                                <div id="get-bookmark" class="box-shadow">
                     <i class="fas fa-book"></i><span> Bookmarks</span><span class="count">0</span>
                  </div>
                        @endguest -->



<!--
                     @guest
                     <div id="get-bookmark" class="box-shadow">
                        @if (Route::has('login'))

                              <a href="{{route('login')}}"><{{ __('Login') }} </a>
                        @endif
                        @if (Route::has('register'))
                           |  <a href="{{route('register')}}">{{ __('Register') }}</a>


                        @endif

                      </div>
                      @else
                            <div id="get-bookmark" class="box-shadow">
                                 <i class="fas fa-book"></i><span>{{ Auth::user()->name }}</span>




                                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ route('logout') }}
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                        @method('PUT')
                                        @csrf
                                    </form>
                                </div>
                                </div>
                            </li>
                        @endguest -->











                  <div id="bookmark-list" class="hidden bookmark-list-on-pc">
                     <ul style="margin: 0;"></ul>
                  </div>
               </div>

            </div>
         </div>
      </header>
      <div class="navbar-container">
         <div class="container">
            <nav class="navbar halim-navbar main-navigation" role="navigation" data-dropdown-hover="1">
               <div class="navbar-header">
                  <button type="button" class="navbar-toggle collapsed pull-left" data-toggle="collapse" data-target="#halim" aria-expanded="false">
                  <span class="sr-only">Menu</span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  </button>
                  <button type="button" class="navbar-toggle collapsed pull-right expand-search-form" data-toggle="collapse" data-target="#search-form" aria-expanded="false">
                  <span class="hl-search" aria-hidden="true"></span>
                  </button>
                  <button type="button" class="navbar-toggle collapsed pull-right get-bookmark-on-mobile">
                  Bookmarks<i class="hl-bookmark" aria-hidden="true"></i>
                  <span class="count">0</span>
                  </button>
                  <button type="button" class="navbar-toggle collapsed pull-right get-locphim-on-mobile">
                  <a href="javascript:;" id="expand-ajax-filter" style="color: #ffed4d;">Lọc <i class="fas fa-filter"></i></a>
                  </button>
               </div>

               <div class="collapse navbar-collapse" id="halim">
                  <div class="menu-menu_1-container">
                     <ul id="menu-menu_1" class="nav navbar-nav navbar-left">
                        <li class="current-menu-item active"><a title="Trang Chủ" href="{{route('homepage')}}">Trang Chủ</a></li>
                        <li class="mega dropdown">
                           <a title="Thể Loại" href="#" data-toggle="dropdown" class="dropdown-toggle" aria-haspopup="true">Thể Loại <span class="caret"></span></a>
                           <ul role="menu" class=" dropdown-menu">
                              @foreach($genre as $key => $gen)
                              <li><a title="{{$gen->title}}" href="{{route('genre',$gen->slug)}}">{{$gen->title}}</a></li>
                              @endforeach
                           </ul>
                        </li>
                        <li class="mega dropdown">
                           <a title="Năm Phim" href="#" data-toggle="dropdown" class="dropdown-toggle" aria-haspopup="true">Năm Phim <span class="caret"></span></a>
                           <ul role="menu" class=" dropdown-menu">
                             @for($year=1995;$year<=2022;$year++)
                              <li><a title="{{$year}}" href="{{url('nam/'.$year)}}">{{$year}}</a></li>
                              @endfor
                           </ul>
                        </li>
                        <li class="mega dropdown">
                           <a title="Quốc Gia" href="#" data-toggle="dropdown" class="dropdown-toggle" aria-haspopup="true">Quốc Gia <span class="caret"></span></a>
                           <ul role="menu" class=" dropdown-menu">
                              @foreach($country as $key => $count)
                              <li><a title="{{$count->title}}" href="{{route('country',$count->slug)}}">{{$count->title}}</a></li>
                              @endforeach
                           </ul>
                        </li>
                        @foreach($category as $key => $cate)
                        <li class="mega"><a title="{{$cate->title}}" href="{{route('category',$cate->slug)}}">{{$cate->title}}</a></li>
                        @endforeach

                     </ul>
                  </div>
                  <ul class="nav navbar-nav navbar-left" style="background:#000;">
                     <li id="btn-loc"><a href="#" onclick="locphim()" style="color: #ffed4d;">Lọc Phim</a></li>
                  </ul>
               </div>
            </nav>
            <div class="collapse navbar-collapse" id="search-form">
               <div id="mobile-search-form" class="halim-search-form"></div>
            </div>
            <div class="collapse navbar-collapse" id="user-info">
               <div id="mobile-user-login"></div>
            </div>
         </div>
      </div>
      </div>
      <style>
          #content-loc{
              display: none;
          }
      </style>
<div class="contaier" id="content-loc">
    <div class="col-md-8 fl-col">
    <form method="GET" action="filter-wb" >
     
     <select class="form-control fl sapxep" name="order">
        <option>--Sắp Xếp--</option>
        <option value="date">Ngày đăng</option>
        <option value="year_release">Năm sản xuất</option>
        <option value="name_a_z">Tên phim</option>
        <option value="watch_view">Lượt xem</option>
     </select>
       <select class="country_filter form-control fl" id="filter_country" name="country_filter">

           <option value="">--chọn Quốc Gia--</option>
           @foreach($country as $key => $cated)

               <option   value="{{$cated->id}}">{{$cated->title}}</option>
           @endforeach
       </select>

       <select class="genre_filter form-control fl"  id="filter_genre" name="genre_filter" >
           <option value="">--chọn thể loại--</option>
           @foreach($genre as $key => $gened)

               <option   value="{{$gened->id}}">{{$gened->title}}</option>
           @endforeach
       </select> 

       
           
            {!! Form::selectYear('year',1995,2022,null,['class'=>'form-control fl select-year','placeholder'=>'--Năm phim--']) !!}
       


{{--        <select class="category_filter form-control fl"  id="filter_category" name="category_filter" >--}}
{{--            <option value="">--chọn thể loại--</option>--}}
{{--            @foreach($category as $key => $catgeed)--}}

{{--                <option   value="{{$catgeed->id}}">{{$catgeed->title}}</option>--}}
{{--            @endforeach--}}
{{--        </select>--}}

<button type="submit" value="Lọc phim" name="filter-btn" class="btn btn-default">Lọc Phim</button>
   </form>
    </div>
</div>
      <div class="container">
         <div class="row fullwith-slider"></div>
      </div>
      <div class="container">
         @yield('content')
      </div>
      <div class="clearfix"></div>
      <footer id="footer" class="clearfix">
         <div class="container footer-columns">
            <div class="row container">
               <div class="widget about col-xs-12 col-sm-4 col-md-6" style="display:flex;">
                  <div class="footer-logo col-md-6">
                     <img class="img-responsive" src="{{asset('/imgs/logo.png')}}" alt="Phim hay 2021- Xem phim hay nhất" />
                  </div>
                  <div class="col-md-6">
                  Liên hệ QC: <a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="e5958d8c888d849ccb868aa58288848c89cb868a88">Phim366ngay@gmail.com</a>
                              <p>Copyright 2021 © MEPHIMMOI.NET
                     Xem phim mới miễn phí nhanh chất lượng cao. Xem Phim online Việt Sub, Thuyết minh, lồng tiếng chất lượng HD. Xem phim nhanh online chất lượng cao</p>
                  </div>
               </div>
            </div>
         </div>
      </footer>
      <div id='easy-top'></div>

      <script type='text/javascript' src='{{asset('js/bootstrap.min.js?ver=5.7.2')}}' id='bootstrap-js'></script>
      <script type='text/javascript' src='{{asset('js/owl.carousel.min.js?ver=5.7.2')}}' id='carousel-js'></script>

      <script type='text/javascript' src='{{asset('js/halimtheme-core.min.js?ver=1626273138')}}' id='halim-init-js'></script>




      <style>#overlay_mb{position:fixed;display:none;width:100%;height:100%;top:0;left:0;right:0;bottom:0;background-color:rgba(0, 0, 0, 0.7);z-index:99999;cursor:pointer}#overlay_mb .overlay_mb_content{position:relative;height:100%}.overlay_mb_block{display:inline-block;position:relative}#overlay_mb .overlay_mb_content .overlay_mb_wrapper{width:600px;height:auto;position:relative;left:50%;top:50%;transform:translate(-50%, -50%);text-align:center}#overlay_mb .overlay_mb_content .cls_ov{color:#fff;text-align:center;cursor:pointer;position:absolute;top:5px;right:5px;z-index:999999;font-size:14px;padding:4px 10px;border:1px solid #aeaeae;background-color:rgba(0, 0, 0, 0.7)}#overlay_mb img{position:relative;z-index:999}@media only screen and (max-width: 768px){#overlay_mb .overlay_mb_content .overlay_mb_wrapper{width:400px;top:3%;transform:translate(-50%, 3%)}}@media only screen and (max-width: 400px){#overlay_mb .overlay_mb_content .overlay_mb_wrapper{width:310px;top:3%;transform:translate(-50%, 3%)}}</style>

      <style>
         #overlay_pc {
         position: fixed;
         display: none;
         width: 100%;
         height: 100%;
         top: 0;
         left: 0;
         right: 0;
         bottom: 0;
         background-color: rgba(0, 0, 0, 0.7);
         z-index: 99999;
         cursor: pointer;
         }
         #overlay_pc .overlay_pc_content {
         position: relative;
         height: 100%;
         }
         .overlay_pc_block {
         display: inline-block;
         position: relative;
         }
         #overlay_pc .overlay_pc_content .overlay_pc_wrapper {
         width: 600px;
         height: auto;
         position: relative;
         left: 50%;
         top: 50%;
         transform: translate(-50%, -50%);
         text-align: center;
         }
         #overlay_pc .overlay_pc_content .cls_ov {
         color: #fff;
         text-align: center;
         cursor: pointer;
         position: absolute;
         top: 5px;
         right: 5px;
         z-index: 999999;
         font-size: 14px;
         padding: 4px 10px;
         border: 1px solid #aeaeae;
         background-color: rgba(0, 0, 0, 0.7);
         }
         #overlay_pc img {
         position: relative;
         z-index: 999;
         }
         @media only screen and (max-width: 768px) {
         #overlay_pc .overlay_pc_content .overlay_pc_wrapper {
         width: 400px;
         top: 3%;
         transform: translate(-50%, 3%);
         }
         }
         @media only screen and (max-width: 400px) {
         #overlay_pc .overlay_pc_content .overlay_pc_wrapper {
         width: 310px;
         top: 3%;
         transform: translate(-50%, 3%);
         }
         }
      </style>

      <style>
         .float-ck { position: fixed; bottom: 0px; z-index: 9}
         * html .float-ck /* IE6 position fixed Bottom */{position:absolute;bottom:auto;top:expression(eval (document.documentElement.scrollTop+document.docum entElement.clientHeight-this.offsetHeight-(parseInt(this.currentStyle.marginTop,10)||0)-(parseInt(this.currentStyle.marginBottom,10)||0))) ;}
         #hide_float_left a {background: #0098D2;padding: 5px 15px 5px 15px;color: #FFF;font-weight: 700;float: left;}
         #hide_float_left_m a {background: #0098D2;padding: 5px 15px 5px 15px;color: #FFF;font-weight: 700;}
         span.bannermobi2 img {height: 70px;width: 300px;}
         #hide_float_right a { background: #01AEF0; padding: 5px 5px 1px 5px; color: #FFF;float: left;}
      </style>
      <script type="text/javascript">
         $(".watch_trailer").click(function(){
            var aid = $(this).attr('href');
            $('html,body').animate({scrollTop: $(aid).offset().top},'slow');
         });
      </script>
      <script type="text/javascript">
         $(".history").click(function(){
            var aid = $(this).attr('href');
            $('html,body').animate({scrollTop: $(aid).offset().top},'slow');
         });
      </script>
      <script type="text/javascript">
          function remove_background(movie_id)
           {
            for(var count = 1; count <= 5; count++)
            {
             $('#'+movie_id+'-'+count).css('color', '#ccc');
            }
          }

          //hover chuột đánh giá sao
         $(document).on('mouseenter', '.rating', function(){
            var index = $(this).data("index");
            var movie_id = $(this).data('movie_id');
          // alert(index);
          // alert(movie_id);
            remove_background(movie_id);
            for(var count = 1; count<=index; count++)
            {
             $('#'+movie_id+'-'+count).css('color', '#ffcc00');
            }
          });
         //nhả chuột ko đánh giá
         $(document).on('mouseleave', '.rating', function(){
            var index = $(this).data("index");
            var movie_id = $(this).data('movie_id');
            var rating = $(this).data("rating");
            remove_background(movie_id);
            //alert(rating);
            for(var count = 1; count<=rating; count++)
            {
             $('#'+movie_id+'-'+count).css('color', '#ffcc00');
            }
           });

          //click đánh giá sao
          $(document).on('click', '.rating', function(){
             
                var index = $(this).data("index");
                var movie_id = $(this).data('movie_id');
            
                $.ajax({
                 url:"{{route('add-rating')}}",
                 method:"POST",
                 data:{index:index, movie_id:movie_id},
                   headers: {
                          'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                      },
                  
                 success:function(data)
                 {
                  if(data == 'done')
                  {
                   
                   alert("Bạn đã đánh giá "+index +" trên 5");
                   location.reload();
                   
                  }else if(data =='exist'){
                    alert("Bạn đã đánh giá phim này rồi,cảm ơn bạn nhé");
                  }
                  else
                  {
                   alert("Lỗi đánh giá");
                  }
                  
                 }
                });
              
              
                
          });
      </script>
      
      <script language="javascript">

          document.getElementById("btn-loc").onclick = function () {
              document.getElementById("content-loc").style.display = 'block';
          };

          // document.getElementById("btn-loc").onclick = function () {
          //     document.getElementById("content-loc").style.display = 'block';
          // };

      </script>
      <!-- jQuery -->
<script src="/template/admin/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="/template/admin/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="/template/admin/dist/js/adminlte.min.js"></script>

<script src="/template/admin/js/main.js"></script>

<script type="text/javascript">
$.ajaxSetup({
    headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
    }
});
</script>
      <script type="text/javascript">
          $(document).ready(function() {
              $('#filter_country').on('change',function(){
                  var country_id_filter = $(this).val();
                  console.log(country_id_filter);
              })
              $('#filter_genre').on('change',function(){
                  var genre_id_filter = $(this).val();
                  console.log(genre_id_filter);
              })
              $('#filter_category').on('change',function(){
                  var category_id_filter = $(this).val();
                  console.log(category_id_filter);
              })


          });
      </script>
<script type="text/javascript">
   function show_data(){
      if(localStorage.getItem('data')!=null) {

            var data = JSON.parse(localStorage.getItem('data'));
            data.reverse();
      document.getElementById('row_viewed').style.overflow = 'scroll';
      document.getElementById('row_viewed').style.height = '500px';
      for(i=0;i<data.length;i++){
         var id = data[i].id;
         var img = data[i].img;
         var name = data[i].name;
         var url = data[i].url;
         var date_hy = data[i].date_hy;
         $('#row_viewed').append('<div class="item post-37176"><a href="/phim/'+url+'" title="phimmmmmmmm"><div class="item-link"><img src="'+img+'" class="lazy post-thumb" alt="#" title="#" /></div><p class="title">'+name+'</p></a><div class="viewsCount" style="color: #9d9d9d;">'+date_hy+'</div><div style="float: left;"><span class="user-rate-image post-large-rate stars-large-vang" style="display: block;/* width: 100%; */"><span style="width: 0%"></span></span></div></div>');
      }
  }
}
show_data();
   history();
   function history(){
      var id_history = $('#list_history').val();
   if(id_history != undefined){
    
      var id = id_history;
      var name = document.getElementById('titie_history_name'+id).value;
      var url = document.getElementById('titie_history_slug'+id).value;
      var img = document.getElementById('list_history_image'+id).value;
     var  date_hy = new Date();



      var newItem = {
         'id':id,
         'url':url,
         'name':name,
         'img':img,
         'date_hy':date_hy

      }


      if(localStorage.getItem('data')==null){
         localStorage.setItem('data','[]');
      }
      var old_data = JSON.parse(localStorage.getItem('data'));
      var metches = $.grep(old_data, function(obj){

         return obj.id == id;
      })
// if(matches.lenght==0){

// }else{
         old_data.push(newItem);
         
         $('#row_viewed').append('<div class="item post-37176"><a href="'+newItem.url+'" title="phimmmmmmmm"><div class="item-link"><img src="'+newItem.img+'" class="lazy post-thumb" alt="#" title="#" /></div><p class="title">'+newItem.name+'</p></a><div class="viewsCount" style="color: #9d9d9d;">'+newItem.date_hy+'</div><div style="float: left;"><span class="user-rate-image post-large-rate stars-large-vang" style="display: block;/* width: 100%; */"><span style="width: 0%"></span></span></div></div>');
        // }

      localStorage.setItem('data', JSON.stringify(old_data));

   }
}
</script>

         <script type="text/javascript">
            $.ajaxSetup({
               headers: {
                     'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                  }
               });
            $(document).ready(function(){

               load_comment();

               function load_comment(){
                  var id = $('.comment_episode').val();


                   $.ajax({
                         url : "{{url('/load-comment')}}",
                         method: 'GET',
                         data:{id:id},
                         success:function(data){
                            $('.comment_show').html(data);
                         }
                     });

               }
               $('.send-comment').click(function(){
                  var id = $('.comment_episode').val();
                  var movie_id = $('.comment_episode_title').val();
                  var title_phim = $('.title_phim').val();
                  var slug_phim = $('.slug_phim').val();

                  var comment_name = $('.comment_name').val();
                  var comment_content = $('.comment_content').val();
                   $.ajax({
                         url : "{{url('/send-comment')}}",
                         method: 'GET',
                         data:{id:id,movie_id:movie_id,title_phim:title_phim,slug_phim:slug_phim,comment_name:comment_name,comment_content:comment_content},
                         success:function(data){
                            load_comment();
                            $('#notify_comment').html('<p class="text text-success">Thêm bình Luận thành công <p/>');
                            $('#notify_comment').fadeOut(5000);
                            $('.comment_content').val('');
                         }
                     });
               });
            });
         </script>



      <script type="text/javascript">
         $(document).ready(function(){
            $('#timkiem').keyup(function(){
               $('#result').html('');
               var search = $('#timkiem').val();
               if(search!= ''){
                  $('#result').css('display','inherit');
                  var expresstion = new RegExp(search, "i");

                  $.getJSON('/json/movies.json' , function(data){
                     $.each(data, function(key, value){
                        if(value.title.search(expresstion) != -1){
                           // $('#result').css('display' , 'inherit');
                           $('#result').append('<li style="cursor:pointer; display: flex; max-height: 200px; padding-left:233px;" class="list-group-item link-class"><img src="/uploads/movie/'+value.image+'" width="100" class="" style="padding-top:53px;padding-bottom:50px;" /><div style="flex-direction: column; margin-left: 2px;"><h4 width="100%">'+value.title+'</h4><span style="display: -webkit-box; max-height: 8.2rem; -webkit-box-orient: vertical; overflow: hidden; text-overflow: ellipsis; white-space: normal; -webkit-line-clamp: 5; line-height: 1.6rem;" class="text-muted"></span></div></li>');
                        }
                     });
                  })
               }else{
                  $('#result').css('display','none');
               }
            })
            $('#result').on('click','li',function(){
               var click_text = $(this).text().split('|');
               $('#timkiem').val($.trim(click_text[0]));
               $("#result").html('');
               $('#result').css('display','none');
            });
         })
      </script>
      <script type="text/javascript">
         $(document).ready(function(){
            $.ajax({
                url:"{{url('/filter-topview-default')}}",
                method:"POST",

                success:function(data)
                {

                    $('#show_ngay_tp').html(data);

                }
            });


        $('.filter-sidebar').click(function(){
            var href = $(this).attr('href');
            if(href=='#ngay'){
                var value = 0;
            }else if(href=='#tuan'){
                var value = 1;
            }else{
                var value = 2;
            }
           console.log(value);
            $.ajax({
                url:"{{url('/filter-topview-phim')}}",
                method:"POST",
                data:{value:value},
                headers:{
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                success:function(data)
                {
                  $('#halim-ajax-popular-post-deful').css("display",'none');
                    $('#show_data').html(data);
                }
            });
        });
        });
    </script>
    <div id="fb-root"></div>
    <script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v14.0" nonce="fPfAPmjO"></script>
   </body>
</html>

<!-- <li class="list-group-item" style="cursor:pointer"><img height="40px" width="40px" src="/uploads/movie/'+value.image+'" />'value.title'<br/>| <span>'+value.description+'</span></li> -->

<!-- <li style="cursor:pointer" class="list-group-item"><img src="/uploads/movie/'+value.image+'" width="100"  />'+value.title+'<br/><span>|'+value.description+'</span></div></li> -->
