module ApplicationHelper
	def format_price(cents)
  		price_in_dollars = cents.to_f / 100
  		sprintf("$%.2f", price_in_dollars)
  	end
end
