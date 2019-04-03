
class Tweet
  ALL = []

  attr_reader :message, :user
  def initialize(message, user)
    @message = message
    @user = user
    ALL << self
  end

  def self.all
    ALL
  end

  def username
    self.user.username
  end
end

class Retweet
  def initialize
    ALL << self
  end
end
#Tweet.new("adadsasaws", User.new("noa"))
