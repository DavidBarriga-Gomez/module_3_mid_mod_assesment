require 'rails_helper'

RSpec.describe 'I can search using the Potter API' do
  it 'can search for gryffidor' do
    visit root_path

    select 'Gryffindor', from: :house
    click_button 'Search For Members'

    expect(current_path).to eq(search_path)
    save_and_open_page

  end
end
