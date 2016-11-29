class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.references :course_type, foreign_key: true
      t.date :start_date
      t.text :description

      t.timestamps
    end
  end
end
