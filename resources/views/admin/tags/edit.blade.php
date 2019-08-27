@extends('layouts.app')

@section('content')


@include('admin.includes.errors')

	<div class="card bg-info" id="formCat">
		<div class="card-header text-center text-white">
			<h2>Update Tag: </h2> {{ $tag->tag }}
		</div>
		<div class="card-body text-white">
			<form action="{{ route('tag.update', ['id' => $tag->id]) }}" method="post">
				{{ csrf_field() }}

				<div class="form-group">
					<label for="name">Tag</label>
					<input type="text" name="tag" value="{{ $tag->tag }}" class="form-control">
				</div>

				<div class="text-center">
					<button class="btn btn-success" type="submit">Save Tag</button>
				</div>
			</form>
		</div>
	</div>


@stop