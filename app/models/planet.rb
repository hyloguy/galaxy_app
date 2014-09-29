class Planet < ActiveRecord::Base
	belongs_to :star_system#, inverse_of: :planet
	has_many :users
	validates :star_system, presence: true
	validates :name, presence: true
	validates :diameter, numericality: true
	validates :orbit, numericality: true
end
