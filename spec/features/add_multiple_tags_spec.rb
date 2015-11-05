require 'spec_helper'

feature 'add multiple tags to a link' do
  scenario 'add two tags to new link' do
    visit('links/new')
    fill_in('title', with: 'Radu')
    fill_in('url', with: 'Radu.com')
    fill_in('tags', with: 'bubbles soap')
    click_button('Save')
    expect(page).to have_content('bubbles')
    expect(page).to have_content('soap')
  end
end
