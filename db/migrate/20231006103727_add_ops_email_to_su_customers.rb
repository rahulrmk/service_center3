class AddOpsEmailToSuCustomers < ActiveRecord::Migration[7.0]
  def change
    add_column :su_customers, :ops_email, :string
  end
end
