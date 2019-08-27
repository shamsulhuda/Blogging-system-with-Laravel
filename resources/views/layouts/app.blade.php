<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Codehut') }}</title>

    <!-- Scripts -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
    <script src="{{ asset('js/app.js') }}" defer></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="{{ asset('js/extra.js') }}" defer></script>
    

    <!-- Fonts -->
    <link rel="dns-prefetch" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet" type="text/css">
    <!-- {{-- font awesome --}} -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <link href="{{ asset('css/extra.css') }}" rel="stylesheet">
    {{-- <link rel="stylesheet" href="{{ asset('css/toastr.min.css') }}"> --}}
    <link href="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css" rel="stylesheet">

    @yield('styles')


</head>
<body>
    <div id="app">
        <nav class="navbar navbar-expand-md navbar-light navbar-laravel bg-info">
            <div class="container">
                <a class="navbar-brand text-white" href="{{ url('/admin/dashboard') }}">
                    {{ config('app.name') }}
                </a>
                <a class="navbar-brand text-white" href="{{ url('/') }}">
                    Home
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <!-- Left Side Of Navbar -->
                    <ul class="navbar-nav mr-auto">

                    </ul>

                    <!-- Right Side Of Navbar -->
                    <ul class="navbar-nav ml-auto">
                        <!-- Authentication Links -->
                        @guest
                            <li class="nav-item">
                                <a class="nav-link text-white" href="{{ route('login') }}">{{ __('Login') }}</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-white" href="{{ route('register') }}">{{ __('Register') }}</a>
                            </li>
                        @else
                            <li class="nav-item dropdown">
                                <a id="navbarDropdown" class="nav-link dropdown-toggle text-white" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                    {{ Auth::user()->name }} <span class="caret"></span>
                                </a>

                                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ __('Logout') }}
                                    </a>
                                    <a class="dropdown-item" href="{{ route('user.profile') }}"
                                       >
                                        {{ __('Profile') }}
                                    </a>


                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                        @csrf
                                    </form>
                                </div>
                            </li>
                        @endguest
                    </ul>
                </div>
            </div>
        </nav>
    </div>
<main class="py-2">
    <div class="container">
        <div class="row">

            @if(Auth::check())

                <div class="col-lg-4 shadow p-2 mb-4">

                    <div class="card-header rgba-stylish-strong z-depth-1 mb-1" role="tab" id="heading1">
                        <a class="collapsed" href="{{ route('home') }}" style="text-decoration: none; color: dark;">
                            <h5 class="mb-0 white-text text-uppercase font-thin ">
                                Dashboard <i class="fa fa-home" style="float: right;"></i>
                            </h5>
                        </a>
                    </div>
            <div class="accordion md-accordion accordion-2 mb-3 list-group" id="accordionEx7" role="tablist" aria-multiselectable="true">

                <!-- Accordion card -->
            <div class="card">

                <!-- Card header -->
                <div class="card-header rgba-stylish-strong z-depth-1 mb-1" role="tab" id="heading1">
                    <a class="collapsed" data-toggle="collapse" data-parent="#accordionEx7" href="#collapse1" aria-expanded="false" aria-controls="collapse1" style="text-decoration: none;">
                        <h5 class="mb-0 text-uppercase font-thin ">
                            Posts <i class="fa fa-angle-down rotate-icon" style="float: right;"></i>
                        </h5>
                    </a>
                </div>

                <!-- Card body -->
                <div id="collapse1" class="collapse" role="tabpanel" aria-labelledby="heading1" data-parent="#accordionEx7">
                    <div class="card-body p-0 rgba-grey-light border-0">
                        <ul class="card border-info list-group">
                            @if(Auth::user()->admin)
                            <li class="list-group-item">
                                <a class="nav-link" href="{{ route('posts') }}">All posts</a>
                            </li>
                            @endif
                            <li class="list-group-item">
                                <a class="nav-link" href="{{ route('post.create') }}">Creat new post</a>
                            </li>
                            @if(Auth::user()->admin)
                            <li class="list-group-item">
                                 <a class="nav-link" href="{{ route('posts.trashed') }}">Trashed posts</a>
                            </li>
                            @endif
                        </ul>
                    </div>
                </div>
            </div>

             <!-- Card 2  -->
            <div class="card">

                <!-- Card header -->
                <div class="card-header rgba-stylish-strong z-depth-1 mb-1" role="tab" id="heading2">
                    <a class="collapsed" data-toggle="collapse" data-parent="#accordionEx7" href="#collapse2" aria-expanded="false" aria-controls="collapse2" style="text-decoration: none;">
                        <h5 class="mb-0 white-text text-uppercase font-thin ">
                            Categories <i class="fa fa-angle-down rotate-icon" style="float: right;"></i>
                        </h5>
                    </a>
                </div>

                <!-- Card body -->
                <div id="collapse2" class="collapse" role="tabpanel" aria-labelledby="heading2" data-parent="#accordionEx7">
                    <div class="card-body p-0 rgba-grey-light white-text">
                        <ul class="card border-info list-group">
                            @if(Auth::user()->admin)
                            <li class="list-group-item">
                                 <a class="nav-link" href="{{ route('categories') }}">All Categories</a>
                            </li>
                            @endif
                            <li class="list-group-item">
                                 <a class="nav-link" href="{{ route('category.create') }}">Create New Category</a>
                            </li>
                            
                        </ul>
                    </div>
                </div>
            </div>
            <!-- {{-- Card 2 --}} -->
            <div class="card">

                <!-- Card header -->
                <div class="card-header rgba-stylish-strong z-depth-1 mb-1" role="tab" id="heading3">
                    <a class="collapsed" data-toggle="collapse" data-parent="#accordionEx7" href="#collapse3" aria-expanded="false" aria-controls="collapse3" style="text-decoration: none;">
                        <h5 class="mb-0 white-text text-uppercase font-thin ">
                            Tags <i class="fa fa-angle-down rotate-icon" style="float: right;"></i>
                        </h5>
                    </a>
                </div>

                <!-- Card body -->
                <div id="collapse3" class="collapse" role="tabpanel" aria-labelledby="heading3" data-parent="#accordionEx7">
                    <div class="card-body p-0 rgba-grey-light white-text">
                        <ul class="card border-info list-group">
                            @if(Auth::user()->admin)
                            <li class="list-group-item">
                                 <a class="nav-link" href="{{ route('tags') }}">Tags</a>
                            </li>
                            @endif
                            <li class="list-group-item">
                                 <a class="nav-link" href="{{ route('tag.create') }}">Create New Tags</a>
                            </li>
                            
                        </ul>
                    </div>
                </div>
            </div>
            <!-- {{-- Card 2 --}} -->
            @if(Auth::user()->admin)
            <div class="card">

                <!-- Card header -->
                <div class="card-header rgba-stylish-strong z-depth-1 mb-1" role="tab" id="heading4">
                    <a class="collapsed" data-toggle="collapse" data-parent="#accordionEx7" href="#collapse4" aria-expanded="false" aria-controls="collapse4" style="text-decoration: none;">
                        <h5 class="mb-0 white-text text-uppercase font-thin ">
                            Users <i class="fa fa-angle-down rotate-icon" style="float: right;"></i>
                        </h5>
                    </a>
                </div>

                <!-- Card body -->
                <div id="collapse4" class="collapse" role="tabpanel" aria-labelledby="heading4" data-parent="#accordionEx7">
                    <div class="card-body p-0 rgba-grey-light white-text">
                        <ul class="card list-group">
                            <li class="list-group-item">
                                 <a class="nav-link" href="{{ route('users') }}">Users List</a>
                            </li>
                            <li class="list-group-item">
                                 <a class="nav-link" href="{{ route('user.create') }}">Create New user</a>
                            </li>
                            
                        </ul>
                    </div>
                </div>
            </div>
            @endif

            <!-- {{-- Card --}} -->
            <div class="card">

                <!-- Card header -->
                <div class="card-header rgba-stylish-strong z-depth-1 mb-1" role="tab" id="heading5">
                    <a class="collapsed" data-toggle="collapse" data-parent="#accordionEx7" href="#collapse5" aria-expanded="false" aria-controls="collapse5" style="text-decoration: none;">
                        <h5 class="mb-0 white-text text-uppercase font-thin">
                            My profile <i class="fa fa-angle-down rotate-icon" style="float: right;"></i>
                        </h5>
                    </a>
                </div>

                <!-- Card body -->
                <div id="collapse5" class="collapse" role="tabpanel" aria-labelledby="heading5" data-parent="#accordionEx7">
                    <div class="card-body p-0 rgba-grey-light white-text">
                        <ul class="card border-info list-group">
                            <li class="list-group-item">
                                 <a class="nav-link" href="{{ route('user.profile') }}">Update profile</a>
                            </li>
                           
                        </ul>
                    </div>
                </div>
            </div>
        </div>

            @if(Auth::user()->admin)
            <div class="card-header rgba-stylish-strong z-depth-1 mb-1" role="tab" id="heading1">
                <a class="collapsed" href="{{ route('settings') }}" style="text-decoration: none; color: dark;">
                    <h5 class="mb-0 white-text text-uppercase font-thin ">
                        Settings <i class="fa fa-home" style="float: right;"></i>
                    </h5>
                </a>
            </div>
            @endif

                </div>
            @endif

            <div class="mb-3 col-lg-8">

                @yield('content')
                
            </div>
        </div>
    </div>
</main>

{{-- <script src="{{ asset('js/toastr.min.js') }}"></script> --}}

{{-- <script>
    @if(Session::has('success'))
        toastr.success("{{ Session::get('success') }}")
    @endif
</script> --}}
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
 

<script type="text/javascript"src="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>
<script>
    @if(Session::has('success'))
        toastr.success("{{ Session::get('success') }}")
    @endif

    @if(Session::has('info'))
        toastr.info("{{ Session::get('info') }}")
    @endif

    @if(Session::has('warning'))
        toastr.warning("{{ Session::get('warning') }}")
    @endif
</script>

@yield('scripts')


</body>
</html>
