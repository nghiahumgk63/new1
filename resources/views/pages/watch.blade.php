@extends('layout')
@section('content')
<div class="row container" id="wrapper">
         <div class="halim-panel-filter">
            <div class="panel-heading">
               <div class="row">
                  <div class="col-xs-6">
                     <div class="yoast_breadcrumb hidden-xs"><span><span><a href="">{{$movie->title}}</a> » <span><a href="{{route('country',[$movie->country->slug])}}">{{$movie->country->title}}</a> » <span class="breadcrumb_last" aria-current="page">{{$movie->title}}</span></span></span></span></div>
                  </div>
               </div>
            </div>
            <div id="ajax-filter" class="panel-collapse collapse" aria-expanded="true" role="menu">
               <div class="ajax"></div>
            </div>
         </div>
         <main id="main-contents" class="col-xs-12 col-sm-12 col-md-8">
            <section id="content" class="test">
               <div class="clearfix wrap-content">
                  <style type="text/css">
                     .iframe_phim iframe{
                        width: 100%;
                        height: 500px;
                     }
                  </style>
                  <div class="iframe_phim">
                  {!! $episode->linkphim !!}
                  </div>
             {{--      <div class="button-watch">
                     <ul class="halim-social-plugin col-xs-4 hidden-xs">
                        <li class="fb-like" data-href="" data-layout="button_count" data-action="like" data-size="small" data-show-faces="true" data-share="true"></li>
                     </ul>
                     <ul class="col-xs-12 col-md-8">
                        <div id="autonext" class="btn-cs autonext">
                           <i class="icon-autonext-sm"></i>
                           <span><i class="hl-next"></i> Autonext: <span id="autonext-status">On</span></span>
                        </div>
                        <div id="explayer" class="hidden-xs"><i class="hl-resize-full"></i>
                           Expand
                        </div>
                        <div id="toggle-light"><i class="hl-adjust"></i>
                           Light Off
                        </div>
                        <div id="report" class="halim-switch"><i class="hl-attention"></i> Report</div>
                        <div class="luotxem"><i class="hl-eye"></i>
                           <span>1K</span> lượt xem
                        </div>
                        <div class="luotxem">
                           <a class="visible-xs-inline" data-toggle="collapse" href="#moretool" aria-expanded="false" aria-controls="moretool"><i class="hl-forward"></i> Share</a>
                        </div>
                     </ul>
                  </div> --}}
                  {{-- <div class="collapse" id="moretool">
                     <ul class="nav nav-pills x-nav-justified">
                        <li class="fb-like" data-href="" data-layout="button_count" data-action="like" data-size="small" data-show-faces="true" data-share="true"></li>
                        <div class="fb-save" data-uri="" data-size="small"></div>
                     </ul>
                  </div>
                --}}
                  <div class="clearfix"></div>
                  <div class="clearfix"></div>
                  <div class="title-block">
                     <a href="javascript:;" data-toggle="tooltip" title="Add to bookmark">
                        <div id="bookmark" class="bookmark-img-animation primary_ribbon" data-id="37976">
                           <div class="halim-pulse-ring"></div>
                        </div>
                     </a>
                     <div class="title-wrapper-xem full">
                        <h1 class="entry-title"><a href="#" title="{{$movie->title}}" class="tl">{{$movie->title}}</a></h1>
                     </div>
                  </div>
                  <div class="entry-content htmlwrap clearfix collapse" id="expand-post-content">
                     <article id="post-37976" class="item-content post-37976"></article>
                  </div>
                  <div class="clearfix"></div>
                  <div class="text-center">
                     <div id="halim-ajax-list-server"></div>
                  </div>
                  <div id="halim-list-server">
                     <ul class="nav nav-tabs" role="tablist">
                        @if($movie->resolution==0)
                                    <li role="presentation" class="active server-1"><a href="#server-0" aria-controls="server-0" role="tab" data-toggle="tab"><i class="hl-server"></i> HD</a></li>
                                @elseif($movie->resolution==1)
                                <li role="presentation" class="active server-1"><a href="#server-0" aria-controls="server-0" role="tab" data-toggle="tab"><i class="hl-server"></i> SD</a></li>
                                @elseif($movie->resolution==2)
                                <li role="presentation" class="active server-1"><a href="#server-0" aria-controls="server-0" role="tab" data-toggle="tab"><i class="hl-server"></i> HDCam</a></li>
                                @elseif($movie->resolution==3)
                                <li role="presentation" class="active server-1"><a href="#server-0" aria-controls="server-0" role="tab" data-toggle="tab"><i class="hl-server"></i> Cam</a></li>
                                @elseif($movie->resolution==4)
                                <li role="presentation" class="active server-1"><a href="#server-0" aria-controls="server-0" role="tab" data-toggle="tab"><i class="bi bi-credit-card-2-front-fill"></i> FullHD</a></li>
                                @else
                                    <li role="presentation" class="active server-1"><a href="#server-0" aria-controls="server-0" role="tab" data-toggle="tab"><i class="hl-server"></i> Trailer</a></li>
                                @endif

                     </ul>
                     <div class="tab-content">
                        <div role="tabpanel" class="tab-pane active server-1" id="server-0">
                           <div class="halim-server">
                              <ul class="halim-list-eps">
                                 @foreach($movie->episode as $key => $sotap)

                                 <a href="{{url('xem-phim/'.$movie->slug.'/tap-'.$sotap->episode)}}"><li class="halim-episode"><span class="halim-btn halim-btn-2 {{$tapphim==$sotap->episode ? 'active' : ''}} halim-info-1-1 box-shadow" data-post-id="37976" data-server="1" data-episode="1" data-position="first" data-embed="0" data-title="Xem phim {{$movie->title}} - Tập {{$sotap->episode}} -{{$movie->name_eng}} - vietsub + Thuyết Minh" data-h1=" {{$movie->title}} - {{$sotap->episode}}">{{$sotap->episode}}</span></li>
                                 </a>
                                 @endforeach

                              </ul>
                              <div class="clearfix"></div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="clearfix"></div>
                  <div class="htmlwrap clearfix">
                     <div id="lightout"></div>
                  </div>
            </section>
            <style type="text/css">
               .style_comment{
                  border-radius: 30px;
               }
               .img-thumbnail{
                  border-radius: 50px;
               }
            </style>
            <p><b>Bình Luận</b></p>
            {{--  <form>
                <input type="hidden" id="list_history_watch" class="list_history" name="list_history" value="{{$episode->id}}">
                <input type="hidden" id="titie_history_name{{$episode->id}}" class="titie_history_name" name="titie_history_name" value="{{$episode->movie->title}}">
                <input type="hidden" id="titie_history_tap{{$episode->id}}" class="titie_history_tap" name="titie_history_tap" value="{{$episode->episode}}">
                <input type="hidden" id="titie_history_slug{{$episode->id}}" class="titie_history_slug" name="titie_history_slug" value="{{$episode->movie->slug}}">
                <input type="hidden" id="title_history_image{{$episode->id}}" class="list_history_image" name="list_history_image" value="{{asset('/uploads/movie/'.$episode->movie->image)}}">
             </form> --}}
            <form >

               @csrf
               <div class="comment_show" id="comment_show">

               </div>





               





               <input type="hidden" id="list_history" name="" class="comment_episode" value="{{$episode->id}}">
               <input type="hidden" name="comment_episode_title" class="comment_episode_title" value="{{$episode->movie_id}}">
               <input type="hidden" name="title_phim" class="title_phim" value="{{$episode->movie->title}}">
               <input type="hidden" name="slug_phim" class="slug_phim" value="{{$episode->movie->slug}}">
               <input type="hidden" name="slug_phim" class="slug_phim" value="{{$sotap->episode}}">
            </form>
            <p><b>Viết đánh giá của bạn</b></p>
            <form action="#">

                              <span>
                                 <input type="text" class="form-control comment_name" placeholder="Your Name"/>

                              </span>
                              <p></p>
                              <textarea class="form-control comment_content" name="comment" placeholder="Nhập nội dung.." ></textarea>
                              {{-- <b>Rating: </b> <img src="images/product-details/rating.png" alt="" /> --}}
                              <button type="button" class="btn btn-default pull-right send-comment">
                                 Bình Luận
                              </button>
                              <div id="notify_comment"></div>
                           </form>

{{--             <div class="tab-pane" id="reviews" >
                        <div class="col-sm-12" style="background-color:#808080" >

                           <form>

                             @csrf
                              <div class="comment_show" id="comment_show"></div>
                              <input type="hidden" name="comment_episode" class="comment_episode" value="{{$episode->id}}">


                        </form>
                        <p></p>
                           <p><b>Viết đánh giá</b></p>

                           <form action="#">
                              <span>
                                 <input type="text" class="form-control" placeholder="Your Name"/>
                              </span>
                              <p></p>
                              <textarea class="form-control" name="" ></textarea>
                              <b>Rating: </b> <img src="images/product-details/rating.png" alt="" />
                              <button type="button" class="btn btn-default pull-right">
                                 Submit
                              </button>
                           </form>
                        </div>
                     </div> --}}
{{--             <form action="#">
               <div class="input-group">
                 <span class="input-group-addon" id="basic-addon1">Your name</span>
                 <input type="text" class="form-control comment_name" placeholder="Username" aria-describedby="basic-addon1">

               </div>
                  <textarea class="form-control" rows="3" placeholder="Nội dung..."></textarea>

            </form> --}}
          <section class="related-movies">
                  <div id="halim_related_movies-2xx" class="wrap-slider">
                     <div class="section-bar clearfix">
                        <h3 class="section-title"><span>CÓ THỂ BẠN MUỐN XEM</span></h3>
                     </div>
                     <div id="halim_related_movies-2" class="owl-carousel owl-theme related-film">
                        @foreach($related as $key => $hot)
                        <article class="thumb grid-item post-38498">
                           <div class="halim-item">
                              <a class="halim-thumb" href="{{route('movie',$hot->slug)}}" title="{{$hot->title}}">
                                 <figure><img class="lazy img-responsive" src="{{asset('uploads/movie/'.$hot->image)}}" alt="{{$hot->title}}" title="{{$hot->title}}"></figure>
                                 <span class="status">
                                    @if($hot->resolution==0)
                                       HD
                                   @elseif($hot->resolution==1)
                                   SD
                                   @elseif($hot->resolution==2)
                                   HDCam
                                   @elseif($hot->resolution==3)
                                   Cam
                                   @else
                                       FullHD
                                   @endif
                                 </span><span class="episode"><i class="fa fa-play" aria-hidden="true"></i>@if($hot->phude==0)
                                       Phụ đề
                                       @if($hot->season!=0)
                                       - Season {{$hot->season}}
                                       @endif
                                    @else
                                       Thuyết minh
                                       @if($hot->season!=0)
                                       - Season {{$hot->season}}
                                       @endif
                                    @endif</span>
                                 <div class="icon_overlay"></div>
                                 <div class="halim-post-title-box">
                                    <div class="halim-post-title ">
                                       <p class="entry-title">{{$hot->title}}</p>
                                       <p class="original_title">{{$hot->name_eng}}</p>
                                    </div>
                                 </div>
                              </a>
                           </div>

                        </article>

                        @endforeach

                     </div>
                     <aside  class="col-xs-12 col-sm-12 col-md-12">
               <div id="halim_tab_popular_videos-widget-7" class="widget halim_tab_popular_videos-widget">
                  <div class="section-bar clearfix">
                     <div class="section-title">
                        <span>Lịch sử đã xem</span>
                        
                                             </div>
                  </div>
                  <section class="tab-content">
                     <div role="tabpanel" id="history"  class="col-md history">
                        <div class="halim-ajax-popular-post-loading hidden"></div>
                        <div id="row_viewed" class="popular-post">
                           
                           
                           
                        
                          
                        </div>
                     </div>
                  </section>
                  <div class="clearfix"></div>
               </div>
            </aside>
                     <script>
                        $(document).ready(function($) {
                        var owl = $('#halim_related_movies-2');
                        owl.owlCarousel({loop: true,margin: 4,autoplay: true,autoplayTimeout: 4000,autoplayHoverPause: true,nav: true,navText: ['<i class="bi bi-chevron-left"></i>', '<i class="bi bi-chevron-right"></i>'],responsiveClass: true,responsive: {0: {items:2},480: {items:3}, 600: {items:4},1000: {items: 4}}})});
                     </script>
                  </div>
               </section>
         </main>
         @include('pages.include.sidebar')
      </div>
      </div>
@endsection


