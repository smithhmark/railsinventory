class RenameItemTypeToTypeCode < ActiveRecord::Migration[7.1]
  def change
    rename_column :items, :type, :type_code
  end
end
