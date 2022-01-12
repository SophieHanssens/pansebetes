class AddColumnsToAnimals < ActiveRecord::Migration[6.1]
  def change
    add_column :animals, :particularity, :string
  end
end
