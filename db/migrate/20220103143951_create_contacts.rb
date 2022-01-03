class CreateContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :speciality
      t.string :country
      t.string :city
      t.string :zipcode
      t.string :street
      t.string :phone_number

      t.timestamps
    end
  end
end
