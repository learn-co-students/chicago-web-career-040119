require 'pry'


def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        }, {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        }, {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        }, {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 12,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        }, {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        }, {
          player_name: "Bismak Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 7,
          blocks: 15,
          slam_dunks: 10
        }, {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        }, {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        }, {
          player_name: "Brendan Haywood",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 22,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end


def num_points_scored(player_name)
  # return that player's points
  find_player(player_name)[:points]
end

def shoe_size(player_name)
  # return that player's shoe size
  find_player(player_name)[:shoe]
end

def get_players
  all_players = []
  game_hash.each do |team_location, team_info|
    team_info[:players].each do |player|
      all_players << player
    end
  end

  # game_hash[:home][:players] + game_hash[:away][:players]
  all_players
end

binding.pry


def find_player(player_name)
  # find the player whose name matches the argument 'player_name'
  get_players.find do |player|
    puts player[:player_name]
    player[:player_name] == player_name
  end
end


# EXERCISE:
# Define a method called get_names that takes an array of instructors
# and returns just their names.
instructors = [
  {name: 'Noa', hometown: 'Detroit, MI', age: 14},
  {name: 'Bruce', hometown: 'Brooklyn, NY', age: 65},
  {name: 'Rishi', hometwon: 'North Brunswick, NJ', age: 21}
]

def get_names(instructors)
  instructors.map do |instructor|
    instructor[:name]
  end
end

def puts_names(instructors)
  instructors.each do |instructor|
    puts instructor[:name]
  end
end


def get_hometowns(instructors)
  instructors.map do |instructor|
    instructor[:hometown]
  end
end

def can_drink_legally_us(instructors)
  instructors.select do |instructor|
    instructor[:age] >= 21
  end
end

puts can_drink_legally_us(instructors)

# EXERCISE
# What do the following return?

arr = (1..100).to_a

arr.map do |num|
  num.even?
end

arr.select do |num|
  7
end
