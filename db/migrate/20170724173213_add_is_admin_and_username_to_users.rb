class AddIsAdminAndUsernameToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :is_admin, :boolean, default: false
    add_column :users, :username, :string 
  end
end
