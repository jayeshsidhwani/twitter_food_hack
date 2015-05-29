module TwitterService
  module Client
    def connection
      Twitter::REST::Client.new do |config|
        config.consumer_key        = CONSTANTS['consumer_key']
        config.consumer_secret     = CONSTANTS['consumer_secret']
        config.access_token        = CONSTANTS['access_token']
        config.access_token_secret = CONSTANTS['access_token_secret']
      end
    end
  end
end