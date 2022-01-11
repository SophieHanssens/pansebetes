class RemoveColumnToContacts < ActiveRecord::Migration[6.1]
  def change
    remove_column :contacts, :speciality
  end
end
