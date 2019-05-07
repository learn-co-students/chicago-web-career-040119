class CreatePostups < ActiveRecord::Migration[5.2]
  def change
    create_table :postups do |t|
      t.references :user
      t.references :malone
      t.timestamps
    end
  end
end
