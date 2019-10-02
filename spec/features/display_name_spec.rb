feature 'display names' do
  scenario 'can display the players names' do
    visit ('/')
    fill_in('Player 1', with: 'Jess')
    fill_in('Player 2', with: 'Heli')
    click_button('Submit')
    expect(page).to have_content('Jess v Heli')
  end
end
