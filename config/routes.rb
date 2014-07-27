Rails.application.routes.draw do
  
  root :to => "idus#home"

  get "/idus" => "idus#index"
  get "/lectures" => "lectures#index"
  post "/lectures/new" => "lectures#create"
  get "/lectures/:id" => "lectures#show"

  get "/home" => "idus#home"
  get "/" => "idus#home"
  get "/login" => "idus#login"
  get "/signup" => "idus#signup"
  get '/about' => "idus#about"

  get "/teachers" => "teachers#index"
  get "/teachers/new" => "teachers#new"
  get "/teachers/error" => "teachers#error"
  post "/teachers/signin" => "teachers#signin"
  get "/teachers/:id" => "teachers#show"
  post "/teachers" => 'teachers#create'
  get "/teachers/:id/edit" => "teachers#edit"
  put "/teachers/:id" => "teachers#update"
 
  post '/lecstu/new' => 'lecstu#create'


  get "/students" => "students#index"
  get "/students/new" => "students#new"
  get "/students/error" => "students#error"
  post "/students/signin" => "students#signin" 
  get "/students/:id" => "students#show"
  post "/students" => 'students#create'
  get "/students/:id/edit" => "students#edit"
  put "/teachers/:id" => "teachers#update"

  get '/students/:id/:lecture' => "students#something"
  get '/students/:id/:lecture/:type' => "students#theform"
  post '/students/:id/:lecture' => "students#something"
  post '/students/:id/:lecture/:type' => "students#newidu"




end
