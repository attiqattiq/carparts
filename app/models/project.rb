class Project < ActiveRecord::Base

	has_many :supply
	belongs_to :status
end
