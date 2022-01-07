class RemoveFieldFromUserAndContact < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :street
    remove_column :users, :zipcode
    remove_column :users, :city
    remove_column :users, :country
    add_column :users, :address, :string

    remove_column :contacts, :street
    remove_column :contacts, :zipcode
    remove_column :contacts, :city
    remove_column :contacts, :country
    add_column :contacts, :address, :string
  end
end
