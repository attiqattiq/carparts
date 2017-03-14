class Customer < ActiveRecord::Base
	has_many :supply

	validates :customer_id, :customer_name, :location, :contact, :presence => true
    validates :customer_name, :length => { :minimum => 5 }
    validates :customer_id, :uniqueness =>true
    
    end
 

