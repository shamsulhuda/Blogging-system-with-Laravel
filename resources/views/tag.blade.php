@extends('layouts.frontend')

@section('content')

	<div class="stunning-header stunning-header-bg-lightviolet">
	    <div class="stunning-header-content">
	        <h1 class="stunning-header-title">Tag: {{ $tag->tag }}</h1>
	    </div>
	</div>

	<div class="container">
	    <div class="row medium-padding120">
	        <main class="main">
            
				<div class="row mb-4">
				    <div class="case-item-wrap">

				        @foreach($tag->posts as $post)

					        <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
					            <div class="case-item">
					                <div class="case-item__thumb">
					                	<a href="{{route('post.single', ['slug' => $post->slug])}}">
					                		<img src="{{asset($post->featured)}}" alt="our case">
					                	</a>
					                    
					                </div>
					                <h6 class="case-item__title text-center"><a href="{{route('post.single', ['slug' => $post->slug])}}">{{ str_limit($post->title, 35) }}</a></h6>
					            </div>
					        </div>
				        @endforeach
				    </div>
				</div>

        </main>
	    </div>
	</div>

@endsection