class RenameAnimalsTable2 < ActiveRecord::Migration[6.1]
  def change
    rename_column :animals, :nom, :name
    rename_column :animals, :espece, :species
    rename_column :animals, :couleur, :color
    rename_column :animals, :nom_scientifique, :scientific_name
    rename_column :animals, :poids, :weight
  end
end
