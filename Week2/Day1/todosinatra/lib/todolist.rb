class TodoList
    attr_reader :tasks, :user
    def initialize(user)
        @tasks = []
        @sorted_tasks = []
        @user = user
    end

    def add_task(task)
    	@tasks << task
    end

    def delete_task(task)
    	task.delete_if{|id| id == @id}
    end

    def find_task_by_id(task)
    	@tasks.select do |x|
    	   if x.id == task
    		 return x.content
    	   else
    		return nil
    	end
    	end
	 end

	 def sort_by_created
	 	@sorted_tasks = @tasks.sort {|task1, task2| task1.created_at <=> task2.created_at}
	 	return @sorted_tasks
	 end


end