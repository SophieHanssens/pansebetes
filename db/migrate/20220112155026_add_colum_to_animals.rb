class AddColumToAnimals < ActiveRecord::Migration[6.1]
  def change
    add_column :animals, :note, :text
  end
end
