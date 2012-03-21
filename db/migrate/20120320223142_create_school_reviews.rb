class CreateSchoolReviews < ActiveRecord::Migration
  def change
    create_table :school_reviews do |t|
      t.integer :rating
      t.text :comments
      t.integer :school_id
      t.integer  :user_id
      t.timestamps
    end
  end
end
