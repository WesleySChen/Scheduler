class Event < ActiveRecord::Base
	#relationships
	has_many :participants
	has_many :e_dates
	has_many :e_times, through: :e_dates

	accepts_nested_attributes_for :e_dates, :allow_destroy => true

	#scopes
	scope :alphabetical, -> { order(:title)}

	#validations
	#validate_presence_of :title
end
