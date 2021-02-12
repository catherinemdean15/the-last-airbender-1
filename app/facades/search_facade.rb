class SearchFacade
  class << self
    def search_for_members(nation)
      data = SearchService.call_for_members(nation)
      Search.new(data)
    end
  end
end
