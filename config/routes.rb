Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    get '/', to: "page#home"
  	post '/', to: "page#create_todo", as: "todos"
end
