class AddRoleIdToUser < ActiveRecord::Migration[7.0][7.0][7.0][6.1]
  def change
    add_column :users, :role_id, :integer
  end
end
