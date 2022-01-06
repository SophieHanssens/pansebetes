class ModifyAnimals < ActiveRecord::Migration[6.1]
  def change
    remove_column :animals, :species
    add_reference :animals, :category, index: true
  end
end
