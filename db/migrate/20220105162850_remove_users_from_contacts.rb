class RemoveUsersFromContacts < ActiveRecord::Migration[6.1]
  def change
    remove_reference :contacts, :users
  end
end
