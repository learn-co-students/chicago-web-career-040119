require 'sqlite3'
class Tweet
  attr_accessor :message, :user_id
  attr_reader :id
  #ALL = []

  def self.all
    #ALL
    sql = "SELECT * FROM tweets;"
    DB[:conn].execute(sql)
  end

  def initialize(attributes={})
    @message = attributes["message"]
    @user_id = attributes["user_id"]
    @id = attributes["id"]
  end

  def save
    #self.class.all << self
    sql = <<-SQL
      INSERT INTO tweets (message, user_id) VALUES (?, ?);
    SQL
    DB[:conn].execute(sql, self.message, self.user_id)
    @id = DB[:conn].execute('SELECT last_insert_rowid() FROM tweets;')[0][0]
  end

  def self.find_by_id(query_id)
    sql = "SELECT * FROM tweets WHERE id = ?"
    tweet_hash = DB[:conn].execute(sql, query_id)[0]
    Tweet.new(tweet_hash)
  end

  def update(new_message)
    sql = "UPDATE tweets SET message = ? WHERE id = ?;"
    DB[:conn].execute(sql, new_message, self.id)
  end

  def destroy
    sql = "DELETE FROM tweets WHERE id = ?;"
    DB[:conn].execute(sql, self.id)
  end



end
