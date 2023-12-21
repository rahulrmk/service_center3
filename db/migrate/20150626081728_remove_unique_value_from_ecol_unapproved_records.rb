class RemoveUniqueValueFromEcolUnapprovedRecords < ActiveRecord::Migration[7.0]
  def change
    remove_column :ecol_unapproved_records, :unique_value
  end
end
