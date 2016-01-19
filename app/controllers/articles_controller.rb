class ArticlesController < ApplicationController
  include HTTParty
  
	def index
		@articles = Article.all
	end
	
	def create
		@pa = params[:article]
		@newArticle = Article.new()
		@newArticle.url = @pa[:url]
		#response = HTTParty.get(@newArticle.url, :verify => false)
		@newWebsite = Website.new()
		@str = "alergologia"
		@newWebsite.content = @str
		if @newWebsite.save
		  search = Website.solr_search do
		    fulltext 'alerg*'
		  end
		end
		
		if @newArticle.save
		  
		  redirect_to articles_path, notice: search.results and return
		end

	end
	
	def destroy
		@artToDel = Article.find(params[:id])
		@artToDel.destroy

		redirect_to articles_path, notice: "Adres URL został usunięty." and return
	end
	
	
		


end
