class PageController < ApplicationController
	attr_accessor :tasks, :finished

	def home
		@cats = Cat.all
		@users = User.all
		@todos = Todo.all
		@new_todo =  Todo.new
	end


	def create_todo
		todo = Todo.new(tasks: params[:todo][:tasks], finished: params[:todo][:finished])
		todo.save()
		redirect_to '/'
	end
end