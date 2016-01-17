class KeywordsController < ApplicationController
	def index
		@keywords = Keyword.all
	end
	
	def create
		@pk = params[:keyword]
		@word = Keyword.new()
		@word.content = @pk[:content]	

		if @word.save
		  redirect_to keywords_path, notice: "Słowo dodane!" and return
		end
		render 'new'
	end
	
	def destroy
		@word = Keyword.find(params[:id])
		@word.destroy

		redirect_to keywords_path, notice: "Słowo zostało usunięte." and return
  end
end
