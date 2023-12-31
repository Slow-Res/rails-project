class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|

      t.string :title, null: false
      t.text :description
      t.string :code, null: false, unique: true
      t.integer :status, default: 0 
      t.integer :capacity
      t.datetime :start_date
      t.datetime :end_date


      t.timestamps
    end
  end
end
