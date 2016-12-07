class ChangeColumnDataType < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :telephone, :string
  end
end
