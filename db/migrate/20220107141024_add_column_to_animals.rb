class AddColumnToAnimals < ActiveRecord::Migration[6.1]
  def change
    add_column :animals, :short_description, :string
  end
end
