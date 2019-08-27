<?php

// email subscription
Route::post('/subscribe', function(){
	$email = request('email');

	Newsletter::subscribe($email);

	Session::flash('subscribed', 'successfully subscribed');

	return redirect()->back();
});
// end of email subscription

Route::get('/test', function(){
	return App\User::find(1)->profile;
});

Route::get('/register', function(){
	return view('register');
});

// ===============Front end=============
Route::get('/',[
	'uses' => 'FrontEndController@index',
	'as' => 'index'
]);

// single post view

Route::get('/post/{slug}', [

	'uses' => 'FrontEndController@singlePost',
	'as' => 'post.single'
]);

//category page
Route::get('/category/{id}', [
	'uses' => 'FrontEndController@category',
	'as' => 'category.single'
]);

// Tags page
Route::get('/tag/{id}', [

	'uses' => 'FrontEndController@tag',
	'as' => 'tag.single'
]);

// Search section
Route::get('/results', function(){

	$posts = \App\Post::where('title', 'like', '%' . request('query') . '%')->get();

	return view('results')->with('posts', $posts)
						  ->with('title', 'Search results : ' . request('query'))
						  ->with('settings', \App\Setting::first())
						  ->with('categories', \App\Category::take(5)->get())
						  ->with('query', request('query'));
});

//==========End Front end section=======

Auth::routes();

// Routes group
Route::group(['prefix' => 'admin', 'middleware' => 'auth'], function(){

// Home page
	Route::get('/dashboard', [

		'uses' => 'HomeController@index',
		'as' => 'home'
	]);
// create post page
	Route::get('/post/create', [

		'uses' => 'PostsController@create',
		'as' => 'post.create'
	]);

// Store post
	Route::post('/post/store', [

		'uses' => 'PostsController@store',
		'as' => 'post.store'
	]);

// Show Post
	Route::get('/posts',[

		'uses' => 'PostsController@index',
		'as' => 'posts'
	]);

//Trashed posts
	Route::get('/posts/trashed',[

		'uses' => 'PostsController@trashed',
		'as' => 'posts.trashed'
	]);

//Kill/parmanent delete Trashed posts
	Route::get('/posts/kill/{id}',[

		'uses' => 'PostsController@kill',
		'as' => 'post.kill'
	]);

//Restore post
	Route::get('/posts/restore/{id}',[

		'uses' => 'PostsController@restore',
		'as' => 'post.restore'
	]);
//Restore Edit post
	Route::get('/posts/edit/{id}',[

		'uses' => 'PostsController@edit',
		'as' => 'post.edit'
	]);
//Update post
	Route::post('/post/update/{id}',[

		'uses' => 'PostsController@update',
		'as' => 'post.update'
	]);

//Restore Delete Post
	Route::get('/post/delete/{id}',[

		'uses' => 'PostsController@destroy',
		'as' => 'post.delete'
	]);

//Category page create
	Route::get('/category/create', [

			'uses' => 'CategoriesController@create',
			'as' => 'category.create'
		]);

// Category: post data
	Route::post('/category/store', [

			'uses' => 'CategoriesController@store',
			'as' => 'category.store'
		]);
// Categories data
	Route::get('/categories', [

		'uses' => 'CategoriesController@index',
		'as' => 'categories'
	]);

	//Categori edit

	Route::get('/category/edit/{id}', [

		'uses' => 'CategoriesController@edit',
		'as' => 'category.edit'
	]);

//Category Update

	Route::post('/category/update/{id}', [

		'uses' => 'CategoriesController@update',
		'as' => 'category.update'
	]);

//Category Delete
	Route::get('/category/delete/{id}', [

		'uses' => 'CategoriesController@destroy',
		'as' => 'category.delete'
	]);

// Tags Area

	Route::get('/tags', [

		'uses' => 'TagsController@index',
		'as' => 'tags'
	]);

// Edit tag
	Route::get('/tag/edit/{id}', [

		'uses' => 'TagsController@edit',
		'as' => 'tag.edit'
	]);

// Create tag page
	Route::get('/tag/create', [

		'uses' => 'TagsController@create',
		'as' => 'tag.create'
	]);

//Update tag
	Route::post('/tag/update/{id}', [

		'uses' => 'TagsController@update',
		'as' => 'tag.update'
	]);

// tag data store
	Route::post('/tag/store', [

		'uses' => 'TagsController@store',
		'as' => 'tag.store'
	]);


// Delete tag
	Route::get('/tag/delete/{id}', [

		'uses' => 'TagsController@destroy',
		'as' => 'tag.delete'
	]);



// ============users profile==============
	Route::get('/users', [
		'uses' => 'UsersController@index',
		'as' => 'users'
	]);

//create user
	Route::get('/user/create', [

		'uses' => 'UsersController@create',
		'as' => 'user.create'
	]);

	Route::post('/user/store',[
		'uses' => 'UsersController@store',
		'as' => 'user.store'
	]);


// user permission
	Route::get('user/admin/{id}', [
		'uses' => 'UsersController@admin',
		'as' => 'user.admin'
	]);

	Route::get('user/not-admin/{id}', [
		'uses' => 'UsersController@not_admin',
		'as' => 'user.not.admin'
	]);

//users profile update
	Route::get('user/profile', [
		'uses' => 'ProfilesController@index',
		'as' => 'user.profile'
	]);

	Route::post('/user/profile/update', [
		'uses' => 'ProfilesController@update',
		'as' => 'user.profile.update'
	]);

// User delete
	Route::get('user/delete/{id}', [
		'uses' => 'UsersController@destroy',
		'as' => 'user.delete'
	]);
// =========End of users profile==========

// Settings
	Route::get('/settings', [
		'uses' => 'SettingsController@index',
		'as' => 'settings'
	]);


	Route::post('/settings/update', [
		'uses' => 'SettingsController@update',
		'as' => 'settings.update'
	]);

});

