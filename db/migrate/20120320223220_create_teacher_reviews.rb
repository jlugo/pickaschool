class CreateTeacherReviews < ActiveRecord::Migration
  def change
    create_table :teacher_reviews do |t|
      t.integer :rating
      t.text :comments
      t.integer :teacher_id
      t.integer  :user_id
      t.timestamps
    end
  end
end
