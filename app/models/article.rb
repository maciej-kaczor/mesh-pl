class Article
  include Mongoid::Document
  include Sunspot::Mongo
  
  field :url, type: String
  field :content, type: String
  embeds_many :keywords
  
  searchable do
    text :content
  end
  
end
