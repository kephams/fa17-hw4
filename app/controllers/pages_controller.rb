class PagesController < ActionController::Base

	def home
		@cats = Cat.all
		@users = User.all
		@todos = Todo.all
		@td = Todo.new
	end

	def create_todo
		t = Todo.new
		t.tasks = params[:todo][:tasks]
		t.finished = params[:todo][:finished]
		t.save!

		redirect_to home_path
	end

end