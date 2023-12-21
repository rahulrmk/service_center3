class AddMaxDistanceForNameToSuCustomers < ActiveRecord::Migration[7.0]
  def change
    add_column :su_customers, :max_distance_for_name, :number
  end
end
