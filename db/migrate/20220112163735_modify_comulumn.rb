class ModifyComulumn < ActiveRecord::Migration[6.1]
  def change
    rename_column :itineraries, :animal, :animal_name
  end
end
