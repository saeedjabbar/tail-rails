class TweetJob < ApplicationJob
  queue_as :default

  def perform(tweet)
    # Do something later
    return if tweet.published?
    return if tweet.published_at > Time.current
    tweet.publish_to_twitter!
  end
end
