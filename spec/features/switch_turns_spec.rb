feature 'Switch turns' do
  scenario 'player 2 can now attack player 1' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'OK'
    click_button 'Attack'
    expect(page).to have_content 'Jess: 50HP'
  end

  scenario 'displays who is playing next' do
    sign_in_and_play
    expect(page).to have_content "Jess, it's your turn!" 
  end
end
