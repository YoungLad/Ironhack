#Inside of server.rb
require 'sinatra'
require 'sinatra/reloader'
# We're going to need to require our class files
require_relative('lib/Task.rb')
require_relative('lib/TodoList.rb')

todo_list = TodoList.new("Lad")
taska = Task.new("ummmmmmm")
tasks = Task.new("dummmmmm")
taskd = Task.new("summmmmm")
todo_list.add_task(taska)
todo_list.add_task(tasks)
todo_list.add_task(taskd)
todo_list.tasks

get "/tasks" do
	@todo = todo_list
	erb(:task_index)
end

get "/new_task" do
	erb(:new_task)
end

post "/create_task" do
	task = params[:task]
	newtask = Task.new(task)
	todo_list.add_task(newtask)
	redirect "/tasks"
end

