class CreateTrainerBadges < ActiveRecord::Migration[5.2]
  def change
    create_table :trainer_badges do |t|
      t.integer :badge_id
      t.integer :trainer_id
    end
  end
end
