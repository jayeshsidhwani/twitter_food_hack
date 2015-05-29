class Tweet
  include Mongoid::Document
  include Mongoid::Timestamps

  field :tweet_id, type: String
  field :text, type: String
  field :tags, type: Array
  field :city, type: String
  field :latitude, type: Float
  field :longotude, type: Float
  field :date, type: Date
  field :rank, type: Float

end
