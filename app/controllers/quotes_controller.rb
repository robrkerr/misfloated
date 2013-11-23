class QuotesController < ApplicationController

	def index
		quotes = Quote.all
		quote = quotes[rand(quotes.length)]
		redirect_to "/#{quote.id}"
	end

	def show
		@quote = Quote.find(params[:id])
		@current_route = request.env['PATH_INFO']
	end
end
