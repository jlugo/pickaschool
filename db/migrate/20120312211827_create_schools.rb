class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.string :demographics
      t.string :groupings
      t.string :telephone
      t.float :latitude
      t.float :longitude
      t.string :address
      t.string :school_type
      t.string :zip
      t.string :city

      t.timestamps
    end
  end
end
