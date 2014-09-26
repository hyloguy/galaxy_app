class Planet < ActiveRecord::Base
	validates :name, presence: true
	validates :diameter, numericality: true
end
