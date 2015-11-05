require 'spec_helper'

feature 'filter links by tag' do
  scenario 'display all links with a given tag' do
    create_tag('bubbles')
    create_tag('soap')
    visit('tags/bubbles')
    expect(page).to have_content('bubbles')
    expect(page).to_not have_content('soap')
  end
end
