class HomeController < ApplicationController
  before_action :set_response_json

  def index
    @testData = {
      api_name: 'offline_client',
      version: '1.01',
      token: form_authenticity_token
    }
    render json: { data: @testData, errors: @errors}, status: :ok
  end

  private
    # always respond with json
    def set_response_json
      request.format = :json
    end
end
