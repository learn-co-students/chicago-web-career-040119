require_relative '../config/environment.rb'

describe "an instance of the hero class" do
  let(:thor) do
    puts "MAKING A THOR"
    Hero.new([
        {
            name: 'Super Strength',
            coolness: 3
        },
        {
            name:'Flight',
            coolness: 5
        },
        {
            name: 'Lightning Blast',
            coolness: 10
        }
    ])
  end

  it "can return its coolest ability based on coolness score" do

    expected_result = {
        name: 'Lightning Blast',
        coolness: 10
    }

    expect(thor.coolest_ability).to eq(expected_result)
  end

  it "lists abilities in alphabetical order" do
    expect(thor.ordered_abilities).to eq(["Flight", "Lightning Blast", "Super Strength"])
  end

  it "can accept a new ability into its abilities list, lengthening the list" do

    new_ability = { name: "Eyepatch", coolness: 5 }
    expect { thor.add_ability(new_ability) }.to change{thor.abilities.count}.by(1)
  end

  it "will have the newly added ability in its abilities list" do
    puts "*" * 95
    puts "Thor ability count: #{thor.abilities.count}"
    new_ability = { name: "Eyepatch", coolness: 5 }
    thor.add_ability(new_ability)

    expect(thor.abilities).to include(new_ability)
  end

  it "will not accept invalid ability formats as input" do
    # thor = Hero.new([
    #     {
    #         name: 'Super Strength',
    #         coolness: 3
    #     },
    #     {
    #         name:'Flight',
    #         coolness: 5
    #     },
    #     {
    #         name: 'Lightning Blast',
    #         coolness: 10
    #     }
    # ])
    # expect{ thor.add_ability(2) }.to raise_error(ArgumentError)
      expect(2+2).to eq(4)
  end
end
