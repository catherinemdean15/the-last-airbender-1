require 'rails_helper'

describe SearchFacade do
  it 'returns members matching search' do
    search = SearchFacade.search_for_fire_nation
    expect(search).to be_a Search
    expect(search.total_members).to eq(97)
    expect(search.make_members).to be_an Array
  end
end
