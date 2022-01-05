class AddColumnToUsersAndContacts < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :admin, :boolean, default: false
    add_column :users, :contact, :boolean

    add_column :contacts, :statut, :string
  end
end
