class Trainer < ActiveRecord::Base
  has_many :pokemon
  has_many :trainer_badges
  has_many :badges, through: :trainer_badges

  def pokemon_count
    self.pokemon.count
  end

end
