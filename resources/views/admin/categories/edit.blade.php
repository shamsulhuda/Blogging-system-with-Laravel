@extends('layouts.app')

@section('content')

@include('admin.includes.errors')

	<div class="card bg-info" id="formCat">
		<div class="card-header text-center text-white">
			<h2>Update Category</h2>
		</div>
		<div class="card-body text-white">
			<form action="{{ route('category.update', ['id' => $category->id]) }}" method="post">
				{{ csrf_field() }}

				<div class="form-group">
					<label for="name">Category Name</label>
					<input type="text" name="name" class="form-control" value="{{ $category->name }}">
				</div>

				<div class="text-center">
					<button class="btn btn-dark" type="submit">Update</button>
				</div>
			</form>
		</div>
	</div>


@stop