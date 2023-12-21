class AddRmEmailToSuCustomers < ActiveRecord::Migration[7.0]
  def change
    add_column :su_customers, :rm_email, :string
  end
end
