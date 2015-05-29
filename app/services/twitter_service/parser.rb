module TwitterService

  # parser = TwitterService::Parser.new
  # parser.parse

  class Parser
    def initialize
      @food_tags = FOOD_TAGS.split(' OR ')
    end

    def parse
      cities = ['mumbai', 'bangalore', 'chennai', 'gurgaon']
      searcher = TwitterService::Search.new

      cities.each do |city|
        p "Setting up #{city}"
        tweets = searcher.search(city)
        p "#{city} - #{tweets.count}"
        extract_tweets(city, tweets)
      end
    end

    def extract_tweets(city, tweets)
      tweets.each do |tweet|
        # next unless tweet.text.include?('?')
        extract(city, tweet)
      end
    end

    def extract(city, tweet)
      tags_found = @food_tags & tweet.text.downcase.split(' ')
      tags_found.each do |tag|
        topic = Topic.find_or_create_by(text: tag, city: city)
        topic.inc(counter: 1)
        topic.save
      end
    end
    
    private
    attr_reader :food_tags
  end
end
