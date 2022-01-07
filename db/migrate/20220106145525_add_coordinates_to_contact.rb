class AddCoordinatesToContact < ActiveRecord::Migration[6.1]
  def change
    add_column :contacts, :latitude, :float
    add_column :contacts, :longitude, :float
  end
end
