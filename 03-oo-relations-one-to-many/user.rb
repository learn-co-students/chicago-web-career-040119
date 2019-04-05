class User
  attr_reader :username

  def initialize(username)
    @username = username
  end

  def tweets
    all_tweets = Tweet.all
    all_tweets.select do |tweet|
      tweet.user == self
    end
  end

  def post_tweet(message)
    new_tweet = Tweet.new(message, self)

    #create new tweet
    # @tweets << new tweet
  end

end
