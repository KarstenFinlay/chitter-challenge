feature 'Signing in' do
  scenario 'User should be able to sign in' do
    visit('/')
    click_button('Sign In')
    fill_in('username', with: 'dude')
    click_button('Sign In')

    expect(page).to have_content('Hello dude,')
  end
end