class ArticlesController < ApplicationController
  include HTTParty
  
	def index
		@articles = Article.all
	end
	
	def create
		@pa = params[:article]
		@newArticle = Article.new()
		@newArticle.url = @pa[:url]
		response = HTTParty.get(@newArticle.url, :verify => false)
		@newArticle.content = response
		
		if @newArticle.save
		  
		  redirect_to articles_path, notice: "Artykuł dodany!" and return
		end

	end
	
	def destroy
		@artToDel = Article.find(params[:id])
		@artToDel.destroy

		redirect_to articles_path, notice: "Adres URL został usunięty." and return
	end
	
	def search
	  @keyword = params[:keyword]
	  @articles = Article.where("keywords.keyword.content" =>@keyword)
	end
		


end
