class CreateTrainers < ActiveRecord::Migration[5.2]
  def change
    create_table :trainers do |t|
      t.string :name
      t.string :hometown
      t.integer :age
      t.integer :badges
      t.boolean :rival
    end
  end
end
