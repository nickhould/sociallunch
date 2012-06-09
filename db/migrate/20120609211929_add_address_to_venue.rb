class AddAddressToVenue < ActiveRecord::Migration
  def change
    add_column :venues, :address, :string
    add_column :venues, :province, :string
  end
end
