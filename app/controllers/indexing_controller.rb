class IndexingController < ApplicationController
  def show
    
  end
  
  def performIndexing
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
