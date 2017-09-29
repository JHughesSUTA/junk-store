class AddToJunkModel < ActiveRecord::Migration[5.0]
  def change
    add_column :junks, :image, :string
    add_column :junks, :description, :text
  end
end
