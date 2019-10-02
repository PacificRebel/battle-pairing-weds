feature 'Testing infrastructure' do
  scenario 'it prints text to the home page' do
    visit('/')
    expect(page).to have_content('testing')
  end
end
