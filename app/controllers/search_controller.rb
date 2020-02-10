class SearchController < ApplicationController

  def index
    @search_facade = SearchFacade.new(params['house'])
    binding.pry
  end
end
