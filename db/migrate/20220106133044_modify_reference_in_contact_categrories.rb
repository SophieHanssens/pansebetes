class ModifyReferenceInContactCategrories < ActiveRecord::Migration[6.1]
  def change
    remove_reference :contact_categories, :category
    add_reference :contact_categories, :category, index: true, array: true, default: []
  end
end
