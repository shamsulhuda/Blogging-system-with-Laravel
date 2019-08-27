@extends('layouts.frontend')

@section('content')

	<div class="stunning-header stunning-header-bg-lightviolet">
	    <div class="stunning-header-content">
	        <h1 class="stunning-header-title">{{ $post->title }}</h1>
	    </div>
	</div>

	<div class="container">
	    <div class="row medium-padding120">
	        <main class="main">
	            <div class="col-lg-10 col-lg-offset-1">
	                <article class="hentry post post-standard-details">

	                    <div class="post-thumb">
	                        <img src="{{asset($post->featured)}}" alt="seo">
	                    </div>

	                    <div class="post__content">


	                        <div class="post-additional-info">

	                        	@if($post->user !== NULL)
	                            <div class="post__author author vcard"><span class="fa fa-align-center" style="font-size: 20px; color: #43e018"></span>
	                                Posted by: 

	                                <div class="post__author-name fn">
	                                    <a href="#" class="post__author-link">{{ $post->user->name }}</a>
	                                </div>

	                            </div>
	                            @else
	                            	<div class="post__author author vcard">
	                            		<i class="fa fa-crosshairs"></i>
	                                Posted by: 

	                                <div class="post__author-name fn">
	                                    <a href="#" class="post__author-link">User disabled</a>
	                                </div>

	                            </div>

	                            @endif

	                            <span class="post__date">

	                                <i class="seoicon-clock" style="color:#43e018"></i>

	                                <time class="published" datetime="2016-03-20 12:00:00">
	                                    {{$post->created_at->toFormattedDateString()}}
	                                </time>

	                            </span>

	                            <span class="category">
	                                <i class="seoicon-tags" style="color:#43e018"></i>
	                                <a href="{{route('category.single', ['id' => $post->category->id])}}">{{ $post->category->name }}</a>
	                            </span>

	                        </div>

	                        <div class="post__content-info" style="color:#424051">

	                            {!! $post->content !!}
								<hr>
	                            <div class="widget w-tags">
	                            	<span>Tags:</span>
	                                <div class="tags-wrap">
	                                    @foreach($post->tags as $tag)
	                                    	<a href="#" class="w-tags-item">{{ $tag->tag }}</a>
	                                    @endforeach
	                                </div>
	                            </div>

	                        </div>
	                    </div>

	                    <div class="socials text-center">
	                        
                <!-- social share -->
		              <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-5cc1c5610ef41870"></script>
            
	                    </div>

	                </article>

	                @if($post->user && $post->user->profile !== NULL)

	                <div class="container" style="width: 1100px">
						<div class="row">
							<div class="col-md-10 col-sm-12">
								<div class="heading1">				
									<img src="{{asset('https://image.ibb.co/cbCMvA/logo.png')}}" />
									About Writer
								</div>
							</div>	
						</div>
						<div class="bio-info">
							<div class="row">
								<div class="col-md-6">
									<div class="row">
										<div class="col-md-12">
											<div class="bio-image">
												<img class="img-thumbnail" src="{{asset($post->user->profile->avatar)}}" alt="{{ $post->user->name }}" title="{{ $post->user->name }}" style="height: 70px; width: 70px" />
											</div>	
											<div class="col-md-6" style="font-size: 24px; color: blue">
												<span>{{ $post->user->name }}</span>
												<div class="socials">
									                <a href="{{ $post->user->profile->facebook }}" class="social__item">
						                                <img src="{{asset('app/svg/circle-facebook.svg')}}" alt="facebook">
						                            </a>

						                            <a href="{{ $post->user->profile->twitter }}" class="social__item">
						                                <img src="{{asset('app/svg/twitter.svg')}}" alt="twitter">
						                            </a>

						                            <a href="{{ $post->user->profile->git }}" class="social__item">
						                                <img src="{{asset('app/svg/google.svg')}}" alt="google">
						                            </a>

						                            <a href="{{ $post->user->profile->youtube }}" class="social__item">
						                                <img src="{{asset('app/svg/youtube.svg')}}" alt="youtube">
						                            </a>
						                        </div>
											</div>		
										</div>
									</div>	
								</div>
								<div class="col-md-6">
									<div class="">
										<p>{{ $post->user->profile->about }}</p>
										
									</div>
									
								</div>
							</div>	
						</div>
					</div>
					@else
					<!-- <h1 class="text-center">Writter is no longer exists</h1> -->
					@endif

	                <!-- <div class="blog-details-author flex-wrap">

	                    <div class="blog-details-author-thumb">
	                        <img class="img-thumbnail flex-wrap" src="{{asset($post->user->profile->avatar)}}" alt="{{ $post->user->name }}" title="{{ $post->user->name }}">
	                    </div>

	                    <div class="blog-details-author-content">
	                        <div class="author-info">
	                            <h5 class="author-name">{{ $post->user->name }}</h5>
	                        </div>
	                        <p class="text">{{ $post->user->profile->about }}
	                        </p>
	                        <div class="socials">
				                <a href="#" class="social__item">
	                                <img src="app/svg/circle-facebook.svg" alt="facebook">
	                            </a>

	                            <a href="#" class="social__item">
	                                <img src="app/svg/twitter.svg" alt="twitter">
	                            </a>

	                            <a href="#" class="social__item">
	                                <img src="app/svg/google.svg" alt="google">
	                            </a>

	                            <a href="#" class="social__item">
	                                <img src="app/svg/youtube.svg" alt="youtube">
	                            </a>
	                        </div>
	                    </div>
	                </div> -->

	                <div class="pagination-arrow">

	                    @if($prev)
		                    <a href="{{ route('post.single', ['slug' => $prev->slug])}}" class="btn-next-wrap">
		                        <div class="btn-content">
		                            <div class="btn-content-title">Next Post</div>
		                            <p class="btn-content-subtitle">{{ str_limit($prev->title, 30)}}</p>
		                        </div>
		                        <svg class="btn-next">
		                            <use xlink:href="#arrow-right"></use>
		                        </svg>
		                    </a>
	                    @endif

	                    @if($next)
		                    <a href="{{ route('post.single', ['slug' =>$next->slug]) }}" class="btn-prev-wrap">
		                        <svg class="btn-prev">
		                            <use xlink:href="#arrow-left"></use>
		                        </svg>
		                        <div class="btn-content">
		                            <div class="btn-content-title">Previous Post</div>
		                            <p class="btn-content-subtitle">{{ str_limit($next->title, 30) }}</p>
		                        </div>
		                    </a>
	                   @endif

	                </div>

	                <div class="comments">

	                    <div class="heading text-center">
	                        <h4 class="h1 heading-title">Comments</h4>
	                        <div class="heading-line">
	                            <span class="short-line"></span>
	                            <span class="long-line"></span>
	                        </div>
	                    </div>

	                    @include('includes.disqus')
	                    
	                </div>

	                


	            </div>

	            <!-- End Post Details -->

	            <!-- Sidebar-->

	            <div class="col-lg-12">
	                <aside aria-label="sidebar" class="sidebar sidebar-right">
	                    <div  class="widget w-tags">
	                        <div class="heading text-center">
	                            <h4 class="heading-title">ALL BLOG TAGS</h4>
	                            <div class="heading-line">
	                                <span class="short-line"></span>
	                                <span class="long-line"></span>
	                            </div>
	                        </div>

	                        <div class="tags-wrap text-center">
	                            @foreach($tags as $tag)
	                           	 <a href="{{route('tag.single', ['id' => $tag->id])}}" class="w-tags-item">{{$tag->tag}}</a>
	                            @endforeach
	                        </div>
	                    </div>
	                </aside>
	            </div>

	            <!-- End Sidebar-->

	        </main>
	    </div>
	</div>

@endsection