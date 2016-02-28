class Participant < ActiveRecord::Base
	#relationships
	belongs_to :event
	has_many :p_dates
	has_many :p_times, through: :p_dates

	#scopes
	scope :alphabetical, -> { order(:name)}

	#validations
	validates_presence_of :name
end
