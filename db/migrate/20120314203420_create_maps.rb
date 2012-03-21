class CreateMaps < ActiveRecord::Migration
  def change
    create_table :maps do |t|
      t.integer :school_id

      t.timestamps
    end
  end
end
