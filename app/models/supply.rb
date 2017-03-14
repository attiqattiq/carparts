class Supply < ActiveRecord::Base
  belongs_to :supplier
  belongs_to :customer
  belongs_to :project
  belongs_to :part
  belongs_to :bill
end
