Rails.application.routes.draw do
    root 'pages#home'
    get 'pages/home'

    get 'todos/new'
    post 'todos', to: "todos#create"
   #  get '/', to: "page#home"
  	# post '/', to: "page#create_todo", as: "todos"
end
