class Website
  include Mongoid::Document
  include Sunspot::Mongo
  
  field :content, type: String
  searchable do
    text :content
  end
  
end
