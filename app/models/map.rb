class Map < ActiveRecord::Base
  belongs_to :location, :class_name => 'School'
end
