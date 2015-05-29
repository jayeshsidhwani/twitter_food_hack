class Topic
  include Mongoid::Document
  include Mongoid::Timestamps

  field :text, type: String
  field :counter, type: Integer, default: 0
  field :city, type: String
  field :latitude, type: Float
  field :longitude, type: Float
  field :date, type: Date
end
