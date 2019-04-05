class Startup
  attr_reader :founder, :domain
  attr_accessor :name

  @@all = []

  def initialize(name, founder, domain)
    @name = name
    @founder = founder
    @domain = domain

    @@all << self
  end

  def pivot(domain, name)
    @domain = domain
    @name = name
  end

  def sign_contract(vc, type, amount)
    FundingRound.new(self, vc, type, amount)
  end

  def funding_rounds
    FundingRound.all.select do |fr|
      fr.startup == self
    end
  end

  def num_funding_rounds
    self.funding_rounds.count
  end

  def total_funds
    investments = self.funding_rounds.map do |fr|
      fr.investment
    end
    investments.reduce(:+)
  end

  def investors
    self.funding_rounds.map do |fr|
      fr.venture_capitalist
    end.uniq
  end

  def big_investors
    self.investors.select do |investor|
      VentureCapitalist.tres_commas_club.include?(investor)
      # investor.total_worth > 100000000
    end
  end

  def self.all
    @@all
  end

  def self.find_by_founder(founder_name)
    @@all.find do |startup|
      # puts "Looking at #{startup.name} by #{startup.founder}. Is the founder #{founder_name}?"
      startup.founder == founder_name
    end
  end

  def self.domains
    @@all.map do |startup|
      startup.domain
    end
  end

end
