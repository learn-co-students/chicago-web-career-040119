class CreateMalones < ActiveRecord::Migration[5.2]
  def change
    create_table :malones do |t|
      t.string :image_url
      t.string :top_text
      t.string :bottom_text
      t.string :mask_color
      t.references :creator
      t.timestamps
    end
  end
end
