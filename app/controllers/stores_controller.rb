class StoresController < ApplicationController
  def index 
  	stores = JSON.parse(open("http://lcboapi.com/stores").read)
    @stores = stores['result']
  end

  def show
  	@store = JSON.parse(open("http://lcboapi.com/stores/#{params[:id]}").read)
  end
end
