class ETime < ActiveRecord::Base
	#relationships
	belongs_to :e_date

	#scopes
	scope :startOrder, -> { order(:start_time)}
	scope :endOrder, -> { order(:end_time)}

	#validations
	# validate_presence_of :name, :email, :password
end
