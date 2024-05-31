class CreateItemOwners < ActiveRecord::Migration[7.1]
  def change
    create_table :item_owners do |t|
      t.string :owner_name
      t.string :email

      t.timestamps
    end
  end
end
