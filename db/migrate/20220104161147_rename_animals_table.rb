class RenameAnimalsTable < ActiveRecord::Migration[6.1]
  def change
    rename_column :animals, :family, :espece
    rename_column :animals, :name, :nom
    rename_column :animals, :color, :couleur
    rename_column :animals, :scientific_name, :nom_scientifique
    rename_column :animals, :weight, :poids
    remove_column :animals, :food
    remove_column :animals, :lifespan
    remove_column :animals, :living
  end
end
