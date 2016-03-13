class EDate < ActiveRecord::Base
	#relationships
	belongs_to :event
	validates :name, presence: true
	has_many :e_times

	def to_s
		name
	end
	#scopes
	scope :dateOrder, -> { order(:pos_date)}

	#validations
	# validates_presence_of :name, :email, :password
end
