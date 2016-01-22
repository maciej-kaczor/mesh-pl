class Keyword
  include Mongoid::Document
  
  field :content, type: String
  embedded_in :article
end
