class Topic
  include Mongoid::Document
  include Mongoid::Timestamps

  field :text, type: String
  field :city, type: String
  field :latitude, type: Float
  field :longotude, type: Float
  field :date, type: Date
end
