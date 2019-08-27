@extends('layouts.frontend')

@section('content')

	<div class="stunning-header stunning-header-bg-lightviolet">
	    <div class="stunning-header-content">
	        <h1 class="stunning-header-title">Category: {{ $category->name }}</h1>
	    </div>
	</div>

	<div class="container">
	    <div class="row medium-padding120">
	        <main class="main">
            
				<div class="row">
				    @if($category->posts->count() > 0)
				    	<div class="case-item-wrap">

				        @foreach($category->posts as $post)

					        <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
					            <div class="case-item">
					                <div class="case-item__thumb">
					                	<a href="{{route('post.single', ['slug' => $post->slug])}}">
					                		<img src="{{asset($post->featured)}}" alt="our case">
					                	</a>
					                    
					                </div>
					                <h6 class="case-item__title text-center"><a href="{{route('post.single', ['slug' => $post->slug])}}">{{ $post->title }}</a></h6>
					            </div>
					        </div>

				        @endforeach

				    </div>
				    @else
				    	<div class="col-md-12 mt-0">
					            <div class="error-template">
					                <h1 class="text-center">
					                	<img src="{{asset('app/img/not_found.png')}}">
					                </h1>
					                <h2 class="text-center">
					                    No Post Available under this category!</h2>
					                <div class="error-details text-center">
					                    Sorry, under this category no post available till now, we are trying to post!
					                </div>
					                <hr>
					                <h2 class="text-center">Search Tips</h2>
					                <div class="" style="display:flex; justify-content: center; color: blue">
					                	<ul>
					                		<li>Check your spelling and try again</li>
					                		<li>Try a similar but different search term.</li>
					                		<li>Keep your search term simple as our search facility works best with shorter descriptions.</li>
					                	</ul>
					                </div>
					            </div>


					            <div class="col-lg-12">
					                <aside aria-label="sidebar" class="sidebar sidebar-right">
					                    <div  class="widget w-tags">
					                        <div class="heading text-center">
					                            <h4 class="heading-title">Suggested Search</h4>
					                            <div class="heading-line">
					                                <span class="short-line"></span>
					                                <span class="long-line"></span>
					                            </div>
					                        </div>

					                        <div class="tags-wrap text-center">
					                            @foreach($categories as $category)
					                                <a href="{{route('category.single', ['id' => $category->id])}}">{{ $category->name }}</a>
						                        @endforeach
					                        </div>
					                    </div>
					                </aside>
					            </div>

					        </div>
				    @endif
				</div>

        </main>
	    </div>
	</div>

@endsection