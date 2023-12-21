class CreateSuCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :su_customers do |t|# {:sequence_start_value => '1 cache 20 order increment by 1'} do |t|
      t.string :account_no, :limit => 20,  :comment => "the debit account no of the corporate, duplicate entries are not allowed"
      t.string :customer_id, :limit => 15, :comment =>"the customer id of the corporate, duplicate entries are not allowed"
      t.string :pool_account_no, :limit => 20,  :comment => "the pool account no for the corporate, multiple corporates can share a pool account"
      t.string :pool_customer_id, :limit => 20,  :comment => "the customer id for the pool account"
      t.string :is_enabled, :limit => 1, :comment =>"the flag to decide if the account is enabled or not "         
      t.string :created_by, :limit => 20, :comment =>"the person who creates the record"   
      t.string :updated_by, :limit => 20, :comment =>"the person who updates the record"   
      t.datetime :created_at,  :comment =>"the timestamp when the file was created"   
      t.datetime :updated_at,  :comment =>"the timestamp when the record was last updated"   
      t.integer :lock_version,  :default => 0, :comment =>"the version number of the record every update increments this by 1"   
      t.string :approval_status, :limit => 1, :default => 'U', :comment =>"the indicator to denote whether this record is pending approval or is approved"   
      t.string :last_action, :limit => 1, :default => 'C', :comment =>"the last action create or update that was performed on the record"   
      t.integer :approved_version,  :comment =>"the version number of the record at the time it was approved"
      t.integer :approved_id,  :comment =>"the id of the record that is being updated"
      t.index([:customer_id,:account_no,:approval_status], :unique => true, :name => "uk_su_customers_1")
    end
  end
end
