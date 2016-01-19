class Article
  include Mongoid::Document
  include Sunspot::Mongo
  field :url, type: String
  embeds_many :keywords
end
