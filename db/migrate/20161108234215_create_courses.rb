class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :title
      t.text :description
      t.text :content
      t.integer :duration
      t.integer :account_id
      t.integer :active_students
      t.decimal :price

      t.timestamps
    end
  end
end
