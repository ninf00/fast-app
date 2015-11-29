class AddColumnUsers < ActiveRecord::Migration
  def change
  	add_column :users, :password, :string
  	add_column :users, :delete_flag, :integer
  end
end
