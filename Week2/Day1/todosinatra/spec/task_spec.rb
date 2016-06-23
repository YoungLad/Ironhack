require_relative("../lib/task.rb")
require_relative("../lib/todolist.rb")
# task = Task.new("ummmmmmm")

# RSpec.describe task do
# 	it "returns id" do
# 		expect(task.id).to eq(1)
# 	end

# 	it "returns false" do
# 		expect(task.completed?).to eq(false)
# 	end

# 	it "returns true" do
# 		expect(task.complete!).to eq(true)
# 	end

# 	it "also returns false" do
# 		expect(task.make_incomplete!).to eq(false)
# 	end

# end

task = TodoList.new("young lad")
taska = Task.new("ummmmmmm")
tasks = Task.new("dummmmmm")
taskd = Task.new("summmmmm")
task.add_task(taska)
task.add_task(tasks)
task.add_task(taskd)
arr = [taska, tasks, taskd]

RSpec.describe task do
	# it "finds a task by id" do
	# 	expect(task.find_task_by_id(1)).to eq("ummmmmmm")
	# end

	it "sorts by date" do
		expect(task.sort_by_created).to eq(arr)
	end

end