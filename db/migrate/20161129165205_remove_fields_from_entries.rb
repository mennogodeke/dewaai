class RemoveFieldsFromEntries < ActiveRecord::Migration[5.0]
  def change
    remove_column :entries, :course
    remove_column :entries, :user
  end
end
