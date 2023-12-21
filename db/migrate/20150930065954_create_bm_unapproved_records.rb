class CreateBmUnapprovedRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :bm_unapproved_records do |t|#, {:sequence_start_value => '1 cache 20 order increment by 1'} do |t|
      t.integer :bm_approvable_id
      t.string :bm_approvable_type

      t.timestamps null: false
    end
  end
end
