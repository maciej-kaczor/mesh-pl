class Article
  include Mongoid::Document
  field :url, type: String
#  embeds_many :keywords
end
