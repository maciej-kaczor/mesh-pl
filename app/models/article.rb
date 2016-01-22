class Article
  include Mongoid::Document
  include Sunspot::Mongo
  
  field :url, type: String
  field :content, type: String
  has_many :keywords, class_name: 'Keyword', :autosave => true
  
  searchable do
    text :content
  end
  
end
