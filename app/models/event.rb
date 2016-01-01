class Event < ActiveRecord::Base
	#relationships
	has_many :e_dates
	has_many :e_times, through :e_dates

	#scopes
	scope :alphabetical, -> { order(:title)}

	#validations
	validate_presence_of :title
end
