class Entry < ActiveRecord::Base
	belongs_to :project
	validates :date, presence:true
	validates :hours, numericality: true, presence: true
	validates :minutes, numericality: true, presence: true
	validates :project_id, presence:true

end
