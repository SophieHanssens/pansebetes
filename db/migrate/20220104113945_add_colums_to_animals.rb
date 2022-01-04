class AddColumsToAnimals < ActiveRecord::Migration[6.1]
  def change
    remove_column :animals, :species
    remove_column :animals, :latin_name
    remove_column :animals, :size
    add_column :animals, :family, :string
    add_column :animals, :scientific_name, :string
    add_column :animals, :food, :string
    add_column :animals, :lifespan, :string
    add_column :animals, :weight, :string
    add_column :animals, :living, :string
  end
end
