class Participant < ActiveRecord::Base
	#relationships
	has_many :p_dates
	has_many :p_times, through :p_dates

	#scopes
	scope :alphabetical, -> { order(:name)}

	#validations
	validate_presence_of :name
end
