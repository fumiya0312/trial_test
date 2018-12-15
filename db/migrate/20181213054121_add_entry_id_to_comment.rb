class AddEntryIdToComment < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :entry_id, :integer
  end
end
