@extends('layouts.app')

@section('content')
            <div class="container">
                
                <div class="row mb-3">
                    <div class="col-xl-6 col-md-6 py-2">
                    <div class="card bg-success text-white h-100 text-center">
                        <div class="card-body bg-success">
                            <div class="rotate">
                              <i class="fa fa-pen fa-4x"></i>
                              <span class="text-uppercase">published posts</span>
                              <hr>
                            </div>
                              <h1 class="display-4">{{$posts_count}}</h1>
                        </div>
                      </div>
                    </div>
                    <div class="col-xl-6 col-md-6 py-2">
                      <div class="card text-white bg-info h-100 text-center">
                          <div class="card-body bg-info">
                              <div class="rotate">
                                  <i class="fa fa-trash-alt fa-4x"></i>
                                  <span class="text-uppercase">Trushed post</span>
                                  <hr>
                              </div>
                              
                              <h1 class="display-4">{{ $trashed_count }}</h1>
                          </div>
                      </div>
                    </div>

                    <div class="col-xl-6 col-md-6 py-2">
                      <div class="card text-white bg-secondary h-100 text-center">
                          <div class="card-body bg-secondary">
                              <div class="rotate">
                                  <i class="fa fa-align-left fa-4x"></i>
                                  <span class="text-uppercase">Posts categories</span>
                                  <hr>
                              </div>
                              
                              <h1 class="display-4">{{ $categories_count }}</h1>
                          </div>
                      </div>
                    </div>

                    <div class="col-xl-6 col-md-6 py-2">
                      <div class="card text-white bg-primary h-100 text-center">
                          <div class="card-body bg-primary">
                              <div class="rotate">
                                  <i class="fa fa-users fa-4x"></i>
                                  <span class="text-uppercase">Users</span>
                                  <hr>
                              </div>
                              
                              <h1 class="display-4">{{ $users_count }}</h1>
                          </div>
                      </div>
                    </div>

                </div>
               
            </div>
            

@endsection
