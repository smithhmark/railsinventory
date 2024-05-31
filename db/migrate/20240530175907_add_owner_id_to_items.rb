class AddOwnerIdToItems < ActiveRecord::Migration[7.1]
  def change
    add_reference :items, :owner_id, null: false, foreign_key: {to_table: :item_owners}
  end
end
