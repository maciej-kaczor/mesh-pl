class IndexingController < ApplicationController
  def show
    
  end
  
  def performIndexing
    @kw = []
    articles = Article.all
    keywords = Keyword.all
    
    keywords.each do |keyword|
      search = Article.search do
        fulltext keyword.content
      end
      search.each_hit_with_result do |hit, article|
        article.keywords << keyword.content unless article.keywords.include?(keyword.content)
        article.save
      end
    end
  end
end
