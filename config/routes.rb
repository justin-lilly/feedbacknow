Rails.application.routes.draw do
  
  get "/idus" => "idus#index"
  get "/lectures" => "lectures#index"

  get "/home" => "idus#home"
  get "/login" => "idus#login"
  get "/signup" => "idus#signup"

  get "/teachers" => "teachers#index"
  get "/teachers/new" => "teachers#new"
  get "/teachers/:id" => "teachers#show"
  post "/teachers" => 'teachers#create'
  # post "/teachers/:id" => "teachers#create"

  get "/students" => "students#index"
  get "/students/new" => "students#new" 
  get "/students/:id" => "students#show"
  post "/students" => 'students#create'

end
