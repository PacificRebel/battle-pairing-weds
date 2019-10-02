feature 'attack' do

  scenario 'allows player 1 to attack player 2' do

    sign_in_and_play
    click_button ('Attack')
    expect(page).to have_content("Jess attacked Heli")
    expect(page).to have_content("Heli has 90HP")

  end

end
