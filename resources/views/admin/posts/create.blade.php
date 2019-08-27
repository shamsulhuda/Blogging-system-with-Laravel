@extends('layouts.app')

@section('content')


@include('admin.includes.errors')

	<div class="card bg-info" id="formCat">
		<div class="card-header text-center text-white">
			<h2>Create a New post</h2>
		</div>
		<div class="card-body text-white">
			<form action="{{ route('post.store') }}" method="post" enctype="multipart/form-data">
				{{ csrf_field() }}

				<div class="form-group">
					<label for="title">Title</label>
					<input type="text" name="title" class="form-control">
				</div>

				<div class="form-group">
					<label for="category">Category</label>
					<select name="category_id" id="category" class="form-control">
						<option>Select a Category</option>
						@foreach($categories as $category)
							<option value="{{ $category->id }}">{{ $category->name }}</option>
						@endforeach
					</select>
				</div>


				<div class="form-group">
					<label for="featured">Featured Image</label>
					<input type="file" name="featured" class="form-control">
				</div>
				
				<div class="form-group">
					<label for="content">Content</label>
					{{-- <textarea id="summernote" name="content" cols="5" rows="5" class="form-control"></textarea> --}}
					<textarea name="content" id="summernote" class="form-control"></textarea>
				</div>
				
				<div class="btn-group dropright form-group">
				  <button type="button" class="btn btn-secondary btn-sm dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				    Select Tags
				  </button>
				 
					<div class="dropdown-menu">
					@foreach($tags as $tag)
						<label class="ml-2">
							<input type="checkbox" name="tags[]" value="{{ $tag->id }}"> {{ $tag->tag }}
						</label>
					@endforeach
					</div>
				  
				</div>
				<div class="text-center">
					<button class="btn btn-dark" type="submit">Store post</button>
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