class AddColumnToContacts < ActiveRecord::Migration[6.1]
  def change
    add_reference :contacts, :users, index: true
  end
end
