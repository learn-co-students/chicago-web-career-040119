class VentureCapitalist
  attr_accessor :name, :total_worth

  @@all = []

  def initialize(name, total_worth)
    @name = name
    @total_worth = total_worth

    @@all << self
  end

  def offer_contract(startup, type, amount)
    FundingRound.new(startup, self, type, amount)
  end

  def funding_rounds
    FundingRound.all.select do |fr|
      fr.venture_capitalist == self
    end
  end

  def portfolio
    self.funding_rounds.map do |fr|
      fr.startup
    end.uniq
  end

  def biggest_investment
    self.funding_rounds.max_by do |fr|
      fr.investment
    end
  end

  def self.all
    @@all
  end

  def self.tres_commas_club
    @@all.select do |vc|
      vc.total_worth > 1000000000
    end
  end
end
