class RemoveTypeFromDessertsTable < ActiveRecord::Migration[5.2]
  def change
    #this happened because i dun goofed and named my column type
    remove_column :desserts, :type
  end
end
