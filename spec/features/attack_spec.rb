feature 'Attacking' do
  scenario 'confirmation that player 2 is attacked' do
    sign_in_and_play
    click_button 'Attack' #or could do click_link 'Attack' if used an <a href="attack">Attack</a> in the play.erb file
    expect(page).to have_content 'Jess attacked Olly'
  end

  scenario 'see player 2 HP reduce by 10' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Olly: 50HP'
  end
end


# User has to - attack player 2
# User sees - confirmation of attack
