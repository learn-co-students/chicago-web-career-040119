class Pokemon < ActiveRecord::Base
  belongs_to :trainer
  self.table_name = "pokemon"
end
