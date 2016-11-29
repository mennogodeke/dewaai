class AddReferenceToEntries < ActiveRecord::Migration[5.0]
  def change
    rename_column :entries, :course_id, :course
    rename_column :entries, :user_id, :user
    add_reference :entries, :course, foreign_key: true
    add_reference :entries, :user, foreign_key: true
  end
end
