class SearchController < ApplicationController
  def index
    @members = SearchFacade.search_for_fire_nation if params[:nation] == fire_nation
    # named search_for_fire_nation for futue functionality of searching for other nations
  end
end
