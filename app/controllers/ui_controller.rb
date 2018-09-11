class UiController < ApplicationController
  before_action :require_agent_or_hospital

  layout :resolve_layout
  
  before_action do
    redirect_to :root if Rails.env.production?
  end
  
  def register_birth
    require 'net/http'
    # @http = Net::HTTP.new('securitybetatest.herokuapp.com')  
    # @http = @http.start    
    # url = 'https://securitybetatest.herokuapp.com/background_history.json?query=sinope f'
    # req = Net::HTTP::Get.new(URI.encode(url))
    # # req.basic_auth USERNAME, API_KEY
    # res = @http.request(req) 
    # puts res.body, 'is this even working', res
    # @result = 'food'
  end

  private

  def resolve_layout
    if current_hospital 
      "hospital"
    else
      "application"
    end
  end
end



