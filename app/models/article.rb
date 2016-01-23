class Article
  include Mongoid::Document
  include Sunspot::Mongo
  
  field :url, type: String
  field :content, type: String
  field :keywords, type: Array
  
  searchable do
    text :content
  end
  
end
