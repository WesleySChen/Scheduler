class PTime < ActiveRecord::Base
	#relationships
	belongs_to :p_date

	#scopes
	scope :startOrder, -> { order(:p_start)}
	scope :endOrder, -> { order(:p_start)}

	#validations
	# validate_presence_of :name, :email, :password
end
