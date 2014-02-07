class ProductsController < ApplicationController
	require 'open-uri'

 	def index
 		per_page = params[:per_page] || 20
 		page = params[:page] || 1
		products_json = open("http://lcboapi.com/products?per_page=#{per_page}&page=#{page}").read
    	@products = JSON.parse(products_json)
  	end

  	def show
 		product = open("http://lcboapi.com/products/#{params[:id]}").read
 		json = JSON.parse(product)
 		@product = json['result']
 		inventory = open("http://lcboapi.com/products/#{params[:id]}/inventories").read
 		jpon = JSON.parse(inventory)
 		@inventory = jpon['result']
  	end
end