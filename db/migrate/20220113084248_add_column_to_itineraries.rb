class AddColumnToItineraries < ActiveRecord::Migration[6.1]
  def change
    add_reference :itineraries, :user, index: true
  end
end
