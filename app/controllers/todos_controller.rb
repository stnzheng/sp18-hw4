class TodosController < ApplicationController
	def new
		@todo = Todo.new
	end

	def create
		@todo = Todo.create(todo_params)
		redirect_to '/'
	end

	private

	def todo_params
		params.require(:todo).permit(:tasks,:finished)
	end
end