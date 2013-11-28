class Student < ActiveRecord::Base
  attr_accessible :house_id, :name
  
  belongs_to :house
end