class SearchFacade
  class << self
    def search_for_fire_nation
      # ideally this would be much more dynamic in case number of members were to change
      page = 1
      data = []
      until page == 6
        data << SearchService.call_for_members(page)
        page += 1
      end
      data = data.flatten
      Search.new(data)
    end
  end
end
