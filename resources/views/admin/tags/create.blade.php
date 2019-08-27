@extends('layouts.app')

@section('content')


@include('admin.includes.errors')

	<div class="card bg-info" id="formCat">
		<div class="card-header text-center text-white">
			<h2>Create a New Tag</h2>
		</div>
		<div class="card-body text-white">
			<form action="{{ route('tag.store') }}" method="post">
				{{ csrf_field() }}

				<div class="form-group">
					<label for="name">Tag</label>
					<input type="text" name="tag" class="form-control">
				</div>

				<div class="text-center">
					<button class="btn btn-success" type="submit">Save Tag</button>
				</div>
			</form>
		</div>
	</div>


@stop