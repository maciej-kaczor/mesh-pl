class ArticlesController < ApplicationController
	def index
		@articles = Article.all
	end
	
	def create
		@pa = params[:article]
		@newArticle = Article.new()
		@newArticle.url = @pa[:url]
		
		if @newArticle.save
		  redirect_to articles_path, notice: "Adres URL dodany!" and return
		end

	end
	
	def destroy
		@artToDel = Article.find(params[:id])
		@artToDel.destroy

		redirect_to articles_path, notice: "Adres URL został usunięty." and return
	end
	
	
		


end
