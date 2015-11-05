feature "Signing up as a new user" do
  scenario "after entering information into the signup form" do
    visit('/sign-up')
    fill_in('name', with: 'Radu')
    fill_in('password', with: 'password')
    fill_in('email', with: 'radu@radu.com')
    click_button('sign-up')
    expect(page).to have_content('Welcome Radu!')
    expect(User.all.count).to eq 1
    expect(User.first(name: 'Radu').email).to eq 'radu@radu.com'
  end
end