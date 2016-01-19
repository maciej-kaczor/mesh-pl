class IndexingController < ApplicationController
  
  def index
    articles = Article.all
    keywords = Keyword.all
    
    keywords.each do |keyword|
      search = Article.search do
        fulltext keyword.content
      end
      search.each_hit_with_result do |hit, article|
        article.keywords << keyword
        article.save
      end
    end
  end
end
