class User < ActiveRecord::Base
  
  has_secure_password
  
  has_many :teacher_reviews
  has_many :school_reviews
  
end
