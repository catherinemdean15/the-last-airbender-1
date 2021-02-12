require 'rails_helper'

RSpec.describe 'root page' do
  it 'can search for results' do
    visit root_path

    select 'Fire Nation', from: 'nation'

    click_button 'Search For Members'

    expect(current_path).to eq(search_path)

    expect(page).to have_content('97')
    expect(page).to have_content('Afiko')
    expect(page).to have_content('Allies: Fire Nation')
    expect(page).to have_content('Enemies: Aang')
    expect(page).to have_content('Affiliation: Fire Nation')
    expect(page).to have_css('table#first-25 tr', count: 25)
    expect(page).to_not have_css('table#first-25 tr', count: 26)
  end
end
