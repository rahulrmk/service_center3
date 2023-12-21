class AddUniqueValueToEcolUnapprovedRecords < ActiveRecord::Migration[7.0]
  def change
    add_column :ecol_unapproved_records, :unique_value, :string
  end
end
