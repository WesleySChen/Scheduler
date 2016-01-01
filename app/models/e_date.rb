class EDate < ActiveRecord::Base
	#relationships
	belongs_to :event
	has_many :e_times

	#scopes
	scope :dateOrder, -> { order(:pos_date)}

	#validations
	# validate_presence_of :name, :email, :password
end
