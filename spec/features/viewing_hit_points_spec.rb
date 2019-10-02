feature 'view hit points' do
  scenario 'view starting HP of player 2' do
    sign_in_and_play
    expect(page).to have_content('Heli has 100HP')
  end


end
