class ModifyItineraryTable < ActiveRecord::Migration[6.1]
  def change
    remove_reference :itineraries, :animal
    add_column :itineraries, :animal, :string
  end
end
