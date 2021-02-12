class SearchController < ApplicationController
  def index
    @nation = params[:nation]
    @members = SearchFacade.search_for_members(@nation)
  end
end
