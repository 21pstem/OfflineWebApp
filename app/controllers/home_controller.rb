class HomeController < ApplicationController
  def index
    @testData = {api_name: 'offline_client', version: '1.01'}
    respond_to do |format|
      format.json { render :json => @testData }
      format.html
    end
  end
end
