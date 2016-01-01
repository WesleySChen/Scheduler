class PDate < ActiveRecord::Base
	#relationships
	belongs_to :participants
	has_many :p_times

	#scopes
	scope :dateOrder, -> { order(:avail_date)}

	#validations
	# validate_presence_of :name, :email, :password
end
