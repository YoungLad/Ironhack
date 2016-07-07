class Project < ActiveRecord::Base
	has_many :time_entries
	validates :name, presence: true
	validates :name, uniqueness: true
	validates :name, length: {maximum:40}
	validates :name, format: { with: /\W/}

	def self.clean_old
		# Project.where(date: < Time.now + (7*24*60*60))
		pro = Project.where("created_at < ?", Time.now.midnight - 1.week)

		pro.destroy_all
	end
end
