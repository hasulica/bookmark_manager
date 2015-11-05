def create_tag(tag)
  visit('links/new')
  fill_in('title', with: 'Radu')
  fill_in('url', with: 'Radu.com')
  fill_in('tags', with: tag)
  click_button('Save')
end
