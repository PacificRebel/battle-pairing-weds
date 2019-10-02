feature 'display names' do
  scenario 'can display the players names' do
    sign_in_and_play
    expect(page).to have_content('Jess v Heli')
  end
end
