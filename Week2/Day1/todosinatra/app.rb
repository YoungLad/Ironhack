require_relative("lib/task.rb")

task = Task.new("Buy the milk")
puts task.id
puts task.completed?
# 1
task2 = Task.new("Wash the car")
puts task2.id
puts task2.created_at
# 2