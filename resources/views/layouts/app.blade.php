<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
     <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">
    

    <title>{{ config('app.name', 'Laravel') }}</title>


    <!-- Scripts -->
    {{-- <script src="{{ asset('js/app.js') }}" defer></script> --}}
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="//cdn.datatables.net/1.11.3/css/jquery.dataTables.min.css">

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">

    <!-- Styles -->
    {{-- <link href="{{ asset('css/app.css') }}" rel="stylesheet"> --}}
        <link href="{{ asset('css/adcp.css') }}" rel="stylesheet">



    <link rel="stylesheet"
      href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome -->
<link rel="stylesheet" href="{{asset('/template/admin/plugins/fontawesome-free/css/all.min.css')}}">
<!-- icheck bootstrap -->
<link rel="stylesheet" href="{{asset('/template/admin/plugins/icheck-bootstrap/icheck-bootstrap.min.css')}}">
<!-- Theme style -->
<link rel="stylesheet" href="/template/admin/dist/css/adminlte.min.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
<link rel="stylesheet"  href="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">
<link rel="stylesheet"  href="//cdn.datatables.net/1.12.1/css/dataTables.bootstrap4.min.css">

<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.css">
 <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
 <script src="//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
 <script src="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.min.js"></script>
 <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
 <script src="{{asset('/ckeditor/ckeditor/ckeditor.js')}}"></script>

 <style>
          
            .ck-editor__editable[role="textbox"] {
                /* editing area */
                min-height: 200px;
            }
            .ck-content .image {
                /* block images */
                max-width: 80%;
                margin: 20px auto;
            }
        </style>
<style>
    .hidden {
        display: none;
    }
</style>
</head>
<body style="background-color: antiquewhite;">

    <div id="app">
        <nav class="navbar navbar-expand-md navbar-light bg-white shadow-sm">
                

            <div class="container">
                <a class="navbar-brand" href="{{ url('/') }}">
                    {{ config('app.name', 'Laravel') }}
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <!-- Left Side Of Navbar -->
                    <ul class="navbar-nav me-auto">

                    </ul>

                    <!-- Right Side Of Navbar -->
                    <ul class="navbar-nav ms-auto">
                        <!-- Authentication Links -->
                        @guest
                            @if (Route::has('login'))
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                                </li>
                            @endif

                            @if (Route::has('register'))
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                                </li>
                            @endif
                        @else
                            <li class="nav-item dropdown">
                                <a id="navbarDropdown" class="nav-link dropdown-toggle" href="{{ route('logout') }}" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                    {{ Auth::user()->name }}
                                </a>

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
                            </li>
                        @endguest
                    </ul>
                </div>
            </div>
        </nav>

        <main class="py-4">
            @if(Auth::id())
                <!-- <div class="container"> -->
                    @include('layouts.navbar')
                </div>
            @endif
            @yield('content')
        </main>
    </div>
    <!-- jQuery -->
<script src="/template/admin/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="/template/admin/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="/template/admin/dist/js/adminlte.min.js"></script>

<script src="/template/admin/js/main.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
<script type="text/javascript" src="//code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript" src="//cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="//cdn.datatables.net/1.12.1/js/dataTables.bootstrap4.min.js"></script>
<script type="text/javascript">
    CKEDITOR.replace('description');
</script>
<script type="text/javascript">
    CKEDITOR.replace('danhgia');
</script>




    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
    <script type="text/javascript" src="//cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript">
        $('.select-year').change(function(){
            var year = $(this).find(':selected').val();
            var id_phim = $(this).attr('id');
            var _token = $('input[name="_token"]').val()
            // alert(year);
            // alert(id_phim);

            $.ajax({
                url:"{{url('/update-year-phim')}}",
                method:"GET",
                data:{year:year,id_phim:id_phim,_token:_token},
                success:function(data)
                {
                    alert('Thay ?????i n??m phim '+ year+'th??nh c??ng');
                }
            });
        })
    </script>
    <script>
function myFunction() {
  alert("ban co muon xoa");
}
</script>

<script>
  $( function() {
    $( "#datepicker" ).datepicker({
        dateFormat:"yy-mm-dd"});
        
  });
  </script>
  <script>
  $( function() {
    $( "#datepicker1" ).datepicker({dateFormat:"yy-mm-dd"});
        dateFormat:"yy-mm-dd";
  });
  </script>
<script type="text/javascript">
    $.ajaxSetup({
               headers: {
                     'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                  }
               });
</script>
<script type="text/javascript">
    new Morris.Area({
    
  element: 'myfirstchart',
  pointFillColors:['#ffffff'],
  pointStrokeColors:['black'],
  gridTextColor:['black'],
  lineColors:['#FF00CC'],
  fillOpacity:0.7,
  data: [
    { Ng??y: 'Tu???n n??y', value: <?php echo $visitors_weedday_count ?> },
    { Ng??y: 'Tu???n Tr?????c', value: <?php echo $visitors_lastweek_count ?> },
    { Ng??y: '2 Tu???n Tr?????c', value: <?php echo $visitors_lastweektoo_count ?> },
    { Ng??y: '3 Tu???n Tr?????c', value: <?php echo $visitors_thlastweektoo_count ?> },
    { Ng??y: '4 Tu???n Tr?????c', value: <?php echo $visitors_forlastweektoo_count ?> },
    { Ng??y: '5 Tu???n Tr?????c', value: <?php echo $visitors_fivelastweektoo_count ?> }
   
  ],
  parseTime:false,
  xkey: 'Ng??y',
  
  ykeys: ['value'],
 
  labels: [' L?????t Truy c???p']
});
</script>
<script type="text/javascript">

    $(document).ready(function(){
      var colorDanger = "#FF1744";
            Morris.Donut({
              element: 'donut',
              resize: true,
              colors: [
                '#AC31B5',
                '#0BBA97',
                '#C6621F',
                '#65234B',
                '#26C6DA',
                '#00BCD4',
                '#00ACC1',
                '#0097A7',
                '#00838F',
                '#006064'
              ],
              data: [
                {label:"Qu???c gia", value:<?php echo $country_count ?>},
                {label:"S??? Phim", value:<?php echo $movie_count ?>},
                {label:"Danh m???c", value:<?php echo $category_count ?>},
                {label:"Th??? lo???i", value:<?php echo $genre_count ?>},
                {label:"T???p Phim", value:<?php echo $episode_count ?>}
              ]
            });

    });

</script>
<script type="text/javascript">
    $.ajaxSetup({
               headers: {
                     'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                  }
               });

    $('.comment_duyet_btn').click(function(){
        var comment_status = $(this).data('comment_status');
        var comment_id = $(this).data('comment_id');
        var id = $(this).attr('id');


        if(comment_status==1){
            var alert = 'Thay ?????i th??nh hi???n b??nh lu???n';
        }else{
             var alert = 'Thay ?????i th??nh ???n b??nh lu???n';
        }
        $.ajax({
                url:"{{url('/allow-comment')}}",
                method:"POST",
                headers:{
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                data:{comment_status:comment_status,comment_id:comment_id,id:id},
                success:function(data)
                {
                    location.reload();
                    
                    $('#notifly-comment').html('<span class="text text-alert">'+alert+'</span');
                },
            });
        

    });

</script>
   <script type="text/javascript">

    $('.btn-reply-comment').click(function(){
        var comment_id = $(this).data('comment_id');
        var comment = $('.reply_comment_'+comment_id).val();
        var slug_phim = $('.slug_phim').val();
        var comment_episode_title = $('.comment_episode_title').val();
        var title_phim = $('.title_phim').val();
        var id = $(this).data('id');

            
        
        $.ajax({
                url:"{{url('/rep-comment')}}",
                method:"POST",
                headers:{
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                data:{comment_id:comment_id,comment:comment,id:id,slug_phim:slug_phim,comment_episode_title:comment_episode_title,title_phim:title_phim},
                success:function(data)
                {
                   
                    $('.reply_comment_'+comment_id).val('');
                    $('#notifly-comment').html('<span class="text text-alert">Tr??? l???i b??nh lu???n th??nh c??ng</span');
                },
            });
        

    });
   </script>

   

    <script type="text/javascript">
        $('.select-season').change(function(){
            var season = $(this).find(':selected').val();
            var id_phim = $(this).attr('id');
            var _token = $('input[name="_token"]').val()
            // alert(year);
            // alert(id_phim);

            $.ajax({
                url:"{{url('/update-season-phim')}}",
                method:"GET",
                data:{season:season,id_phim:id_phim,_token:_token},
                success:function(data)
                {
                    alert('Thay ?????i phim season '+ season+'th??nh c??ng');
                }
            });
        })
    </script>
    <script type="text/javascript">
        $('.select-topview').change(function(){
            var topview = $(this).find(':selected').val();
            var id_phim = $(this).attr('id');
            // alert(year);
            // alert(id_phim);
            if(topview==0){
                var text= 'Ng??y';
            }else if(topview==1){
                var text = 'Tu???n';
            }else if(topview==2){
                var text = 'Th??ng'
            }else{
                var text = 'M???c ?????nh'
            }
            $.ajax({
                url:"{{url('/update-topview-phim')}}",
                method:"GET",
                data:{topview:topview,id_phim:id_phim},
                success:function(data)
                {
                    alert('Thay ?????i phim theo topview'+ text +'th??nh c??ng');
                }
            });
        })
    </script>

<script type="text/javascript" src="{{asset('js/datatbb.js/')}}"></script>
   
    <script type="text/javascript">
    

    function ChangeToSlug()
        {

            var slug;
         
            //L???y text t??? th??? input title 
            slug = document.getElementById("slug").value;
            slug = slug.toLowerCase();
            //?????i k?? t??? c?? d???u th??nh kh??ng d???u
                slug = slug.replace(/??|??|???|???|??|??|???|???|???|???|???|??|???|???|???|???|???/gi, 'a');
                slug = slug.replace(/??|??|???|???|???|??|???|???|???|???|???/gi, 'e');
                slug = slug.replace(/i|??|??|???|??|???/gi, 'i');
                slug = slug.replace(/??|??|???|??|???|??|???|???|???|???|???|??|???|???|???|???|???/gi, 'o');
                slug = slug.replace(/??|??|???|??|???|??|???|???|???|???|???/gi, 'u');
                slug = slug.replace(/??|???|???|???|???/gi, 'y');
                slug = slug.replace(/??/gi, 'd');
                //X??a c??c k?? t??? ?????t bi???t
                slug = slug.replace(/\`|\~|\!|\@|\#|\||\$|\%|\^|\&|\*|\(|\)|\+|\=|\,|\.|\/|\?|\>|\<|\'|\"|\:|\;|_/gi, '-');
                //?????i kho???ng tr???ng th??nh k?? t??? g???ch ngang
                slug = slug.replace(/ /gi, "-");
                //?????i nhi???u k?? t??? g???ch ngang li??n ti???p th??nh 1 k?? t??? g???ch ngang
                //Ph??ng tr?????ng h???p ng?????i nh???p v??o qu?? nhi???u k?? t??? tr???ng
                slug = slug.replace(/\-\-\-\-\-/gi, '-');
                slug = slug.replace(/\-\-\-\-/gi, '-');
                slug = slug.replace(/\-\-\-/gi, '-');
                slug = slug.replace(/\-\-/gi, '-');
                //X??a c??c k?? t??? g???ch ngang ??? ?????u v?? cu???i
                slug = '@' + slug + '@';
                slug = slug.replace(/\@\-|\-\@|\@/gi, '');
                //In slug ra textbox c?? id ???slug???
            document.getElementById('convert_slug').value = slug;
        }

    </script>
    <script type="text/javascript">
        $(document).ready(function () {
    $('#datamovie').DataTable();
});
    </script>
    <script type="text/javascript">
        $('.order_position').sortable({
            placeholder : 'ui-state-highlight',
            update: function(event,ui){
                var array_id = [];
                $('.order_position tr').each(function(){
                    array_id.push($(this).attr('id'));
                })
                $.ajax({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    url:"{{route('resorting')}}",
                    method:"POST",
                    data:{array_id:array_id},
                    success:function(data){
                        alert('s???p x???p th??? t??? th??nh c??ng');
                    }
                })
            }
        })
    </script>
    <script type="text/javascript">
        $('.order_position_ep').sortable({
            placeholder : 'ui-state-highlight',
            update: function(event,ui){
                var array_id = [];
                $('.order_position_ep tr').each(function(){
                    array_id.push($(this).attr('id'));
                })
                $.ajax({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    url:"{{route('resorting-ep')}}",
                    method:"POST",
                    data:{array_id:array_id},
                    success:function(data){
                        alert('s???p x???p th??? t??? th??nh c??ng');
                    }
                })
            }
        })
    </script>
    <script type="text/javascript">
        $('.select-movie').change(function(){
            var id = $(this).val();
              $.ajax({
                url:"{{route('select-movie')}}",
                method:"GET",
                data:{id:id},
                success:function(data)
                {
                    $('#show_movie').html(data);
                }
            });
        })

    </script>




    <script type="text/javascript">
        $('.show-detail-movie').click(function() {
            $('.show-detail-moive-modal').html('');
            $('.title-show-movie-modal').text($(this).data('title'))
            $.ajax({
                url:"/movie/" + $(this).data('id'),
                method:"GET",
                success:function(data)
                {
                    $('.show-detail-moive-modal').html(data);
                }
            });
        })
    </script>



</body>
</html>

