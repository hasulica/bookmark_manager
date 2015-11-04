require 'spec_helper'

feature 'add single tag to link' do
  scenario 'add a tag to a given link' do
    visit('links/new')
    fill_in('title', with: 'Radu')
    fill_in('url', with: 'Radu.com')
    fill_in('tags', with: 'personal')
    click_button('Save')
    link = Link.first
    expect(link.tags.map(&:name)).to include('personal')
  end

end
