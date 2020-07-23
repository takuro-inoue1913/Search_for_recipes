class AddColumnToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string, null: false, default: '', limit: 100
    add_column :users, :self_introduction, :string, limit: 500
    add_column :users, :speciality, :integer, null: false, default: 0
    add_column :users, :image, :string
  end
end
