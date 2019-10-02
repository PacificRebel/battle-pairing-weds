feature 'switching turns' do

  scenario 'allows player 1 to start' do
    sign_in_and_play
    expect(page).to have_content("Current turn: Jess")
  end





end
