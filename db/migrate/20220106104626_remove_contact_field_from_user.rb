class RemoveContactFieldFromUser < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :contact
  end
end
