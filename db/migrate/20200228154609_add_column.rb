class AddColumn < ActiveRecord::Migration[5.1]
  def change
    add_column :vendor_sweets, :vendor_sweet_id, :string
  end
end
