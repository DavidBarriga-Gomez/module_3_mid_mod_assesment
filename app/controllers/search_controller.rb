class SearchController < ApplicationController

  # def index
  #   @search_facade = SearchFacade.new(params['house'])
  #   binding.pry
  # end

  def index
    members = params[:house]

    conn = Faraday.new(url: 'https://www.potterapi.com/v1') do |faraday|
      faraday.headers['$2a$10$7x9hfaoY/TN.QDU2Jes7XOkWgToDX7sgoOGmY3JRtCAZcV7RZ9gw'] = '$2a$10$7x9hfaoY/TN.QDU2Jes7XOkWgToDX7sgoOGmY3JRtCAZcV7RZ9gw'
      faraday.adapter Faraday.default_adapter
    end

    response = conn.get("https://www.potterapi.com/v1/sortingHat.json")
    # response = conn.get('/houses')

  end
end
