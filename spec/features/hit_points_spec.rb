feature 'View hit points' do
  scenario 'see Player 2 hit points' do
    visit ('/')
    fill_in :player_1_name, with: 'Jess'
    fill_in :player_2_name, with: 'Olly'
    click_button 'Submit'
    expect(page).to have_content 'Olly: 60HP' 
  end
end





# User has to click 'View Player 2's Hit Points in order to see their Hit points
# Visit the home page
# Enter a name in the text field
# Enter another name in the text field
# Click the submit button
# See player 2: X Hit Points
