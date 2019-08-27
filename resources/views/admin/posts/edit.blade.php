@extends('layouts.app')

@section('content')


@include('admin.includes.errors')

	<div class="card bg-success" id="formCat">
		<div class="card-header text-center text-white">
			<h2>Edit post</h2>
		</div>
		<div class="card-body text-white">
			<form action="{{ route('post.update',['id'=>$post->id]) }}" method="post" enctype="multipart/form-data">
				{{ csrf_field() }}

				<div class="form-group">
					<label for="title">Title</label>
					<input type="text" name="title" value="{{ $post->title }}" class="form-control">
				</div>

				<div class="form-group">
					<label for="category">Category</label>

					<select name="category_id" id="category" class="form-control">
						
						@foreach($categories as $category)

							<option value="{{ $category->id }}"
								@if($post->category->id == $category->id)
									selected 
								@endif
							>{{ $category->name }}</option>
							
						@endforeach
					</select>
				</div>

				<div class="form-group">
					<label for="featured">Featured Image</label>
					<input type="file" name="featured" class="form-control">
				</div>
				
				<div class="form-group">
					<label for="content">Content</label>
					<textarea id="summernote" name="content" cols="5" rows="5" class="form-control">{{$post->content}}</textarea>
				</div>

				<div class="btn-group dropright form-group">
				  <button type="button" class="btn btn-secondary btn-sm dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				    Select Tags
				  </button>
				 
					<div class="dropdown-menu">
					@foreach($tags as $tag)
						<label class="ml-2">
							<input type="checkbox" name="tags[]" value="{{ $tag->id }}"
							@foreach($post->tags as $t)
								@if($tag->id == $t->id)
									checked 
								@endif
							@endforeach
							> {{ $tag->tag }}
						</label>
					@endforeach
					</div>
				  
				</div>

				<div class="text-center">
					<button class="btn btn-dark" type="submit">Update post</button>
				</div>
			</form>
		</div>
	</div>

@stop
@section('styles')
	<link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote-lite.css" rel="stylesheet">
@stop

@section('scripts')
	<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote-lite.js"></script>
	<script>
      $('#summernote').summernote({
        placeholder: 'Start from here....',
        tabsize: 2,
        height: 100
      });
    </script>
@stop