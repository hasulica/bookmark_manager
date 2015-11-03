require 'spec_helper'

feature "show list of all saved links" do
  Link.create(url: "http://www.makersacademy.com/", title: 'Makers Academy')

  visit('/links')

  within 'ul#links' do
    expect(page).to have_content('Makers Academy')
  end
end
