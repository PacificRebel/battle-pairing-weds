def sign_in_and_play

  visit('/')
  fill_in('Player1', with: 'Jess')
  fill_in('Player2', with: 'Heli')
  click_button('Submit')

end
