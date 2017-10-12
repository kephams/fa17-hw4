class PagesController < ActionController::Base

	def home
		@cats = Cat.all
		@users = User.all
		@todos = Todo.all
		@td = Todo.new
	end

	def create_todo
		t = Todo.new
		t.jobs = params[:todo][:jobs]
		t.done = params[:todo][:done]
		t.save!

		redirect_to home_path
	end

end