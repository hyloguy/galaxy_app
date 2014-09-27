class StarSystem < ActiveRecord::Base
	has_many :planets#, inverse_of: :star_system
	validates :name, presence: true
end
