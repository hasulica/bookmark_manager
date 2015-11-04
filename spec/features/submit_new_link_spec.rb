require 'spec_helper'

feature 'save new link' do
  scenario 'add a new bookmark using a form' do
    visit('links/new')
    fill_in('title', with: "Radu")
    fill_in('url', with: 'http://radu.com')
    click_button('Save')
    expect(page).to have_content ('Radu')
  end
end
