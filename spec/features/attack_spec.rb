feature 'Attacking' do
  scenario 'confirmation that player 2 is attacked' do
    sign_in_and_play
    click_button 'Attack' #or could do click_link 'Attack' if used an <a href="attack">Attack</a> in the play.erb file
    expect(page).to have_content 'Jess attacked Olly'
  end

  scenario 'see player 2 HP reduce by 10' do
    allow_any_instance_of(Player).to receive(:rand) { 10 }
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Olly: 50HP'
  end

  scenario 'see player 1 HP reduce by 10' do
    allow_any_instance_of(Player).to receive(:rand) { 10 }
    sign_in_and_play
    click_button 'Attack'
    click_button 'OK'
    click_button 'Attack'
    expect(page).to have_content 'Jess: 50HP'
  end

  scenario 'see OK button to take player back to start of game' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_button 'OK'
  end
end


# User has to - attack player 2
# User sees - confirmation of attack
