<!-- <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="{{route('home')}}">Dashboard</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="{{route('category.create')}}">Danh Mục</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="{{route('genre.create')}}">Thể Loại</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="{{route('country.create')}}">Quốc Gia</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="{{route('movie.create')}}">Phim</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="{{route('episode.create')}}">Tập Phim</a>
      </li>

    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="..." aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Tìm Phim</button>
    </form>
  </div>
</nav> -->

<div class="wrapper">

    
</div>
<aside class="main-sidebar sidebar-dark-primary elevation-4" style="min-height: 450%;">

    <!-- Brand Logo -->
    <a href="{{route('home')}}" class="brand-link">
        <img src="/template/admin/dist/img/AdminLTELogo.png" alt="AdminLTE Logo"
             class="brand-image img-circle elevation-3" style="opacity: .8">
        <span class="brand-text font-weight-light">ADMIN</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
        <!-- Sidebar user (optional) -->
        <div class="user-panel mt-3 pb-3 mb-3 d-flex">
            <div class="image">
                <img src="/template/admin/dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
            </div>
            <div class="info">
                <a href="#" class="d-block">{{ Auth::user()->name }}</a>
            </div>
        </div>

        <!-- SidebarSearch Form -->
<!--         <div class="form-inline">
            <div class="input-group" data-widget="sidebar-search">
                <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
                <div class="input-group-append">
                    <button class="btn btn-sidebar">
                        <i class="fas fa-search fa-fw"></i>
                    </button>
                </div>
            </div>
        </div> -->

        <!-- Sidebar Menu -->
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                <!-- Add icons to the links using the .nav-icon class
                     with font-awesome or any other icon font library -->
                <li class="nav-item {{ Request::is('category/create', 'category') ? 'menu-is-opening menu-open' : '' }}">
                    <a href="#" class="nav-link ">
                        <i class="nav-icon fas fa-bars"></i>
                        <p> Danh Mục
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">

                        <li class="nav-item" >
                            <a href="{{route('category.create')}}" class="nav-link {{ Request::is('category/create') ? 'active' : '' }}">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Thêm Danh Mục</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{route('category.index')}}" class="nav-link {{ Request::is('category') ? 'active' : '' }}">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Danh Sách Danh Mục</p>
                            </a>
                        </li>

                    </ul>
                </li>

                <li class="nav-item {{ Request::is('genre/create', 'genre') ? 'menu-is-opening menu-open' : '' }}">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-store-alt"></i>
                        <p> Thể Loại
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="{{route('genre.create')}}" class="nav-link {{ Request::is('genre/create') ? 'active' : '' }}">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Thêm Thể loại</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{route('genre.index')}}" class="nav-link {{ Request::is('genre') ? 'active' : '' }}">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Danh Sách thể loại</p>
                            </a>
                        </li>

                    </ul>
                </li>

                <li class="nav-item {{ Request::is('country/create', 'country') ? 'menu-is-opening menu-open' : '' }}">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-globe"></i>
                        <p> Quốc Gia
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="{{route('country.create')}}" class="nav-link {{ Request::is('country/create') ? 'active' : '' }}">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Thêm quốc gia</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{route('country.index')}}" class="nav-link {{ Request::is('country') ? 'active' : '' }}">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Danh Sách quốc gia</p>
                            </a>
                        </li>

                    </ul>
                </li>
                <li class="nav-item {{ Request::is('movie/create', 'movie') ? 'menu-is-opening menu-open' : '' }}">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-images"></i>
                        <p> Phim
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="{{route('movie.create')}}" class="nav-link {{ Request::is('movie/create') ? 'active' : '' }}">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Thêm phim</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{route('movie.index')}}" class="nav-link {{ Request::is('movie') ? 'active' : '' }}">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Danh Sách phim</p>
                            </a>
                        </li>

                    </ul>
                </li>


                <li class="nav-item {{ Request::is('episode/create', 'episode') ? 'menu-is-opening menu-open' : '' }}">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-images"></i>
                        <p> Tập phim
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="{{route('episode.create')}}" class="nav-link {{ Request::is('episode/create') ? 'active' : '' }}">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Thêm tập phim</p>
                            </a>
                        </li>

                    </ul>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="{{route('episode.index')}}" class="nav-link  {{ Request::is('episode') ? 'active' : '' }}">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Danh sách tập phim</p>
                            </a>
                        </li>

                    </ul>
                </li>


                <li class="nav-item {{ Request::is('comments', 'comments/create') ? 'menu-is-opening menu-open' : '' }}">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-images"></i>
                        <p> Thống kê
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="{{route('comments.index')}}" class="nav-link {{ Request::is('comments') ? 'active' : '' }}">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Thống kê Comment</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{route('comments.create')}}" class="nav-link {{ Request::is('comments/create') ? 'active' : '' }}">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Thông kê truy cập</p>
                            </a>
                        </li>
                        

                    </ul>
                    
                </li>





            </ul>
        </nav>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>