class School < ActiveRecord::Base
  
  has_many :school_reviews
  
  acts_as_gmappable
  
  def gmaps4rails_address
    address
  end

  def gmaps4rails_infowindow
     "<h2>
        School name: <a href='/schools/#{id}'>#{name}</a>, Address: #{address} 
      </h2>"
  end
    
  def gmaps4rails_sidebar
    name
  end  
    
end
