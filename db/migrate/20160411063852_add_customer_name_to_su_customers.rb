class AddCustomerNameToSuCustomers < ActiveRecord::Migration[7.0]
  def change
    add_column :su_customers, :customer_name, :string, :limit=>100, :comment => "the name of the customer"
  end
end
