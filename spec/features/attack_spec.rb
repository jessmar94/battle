feature 'Attacking' do
  scenario 'confirm player 2 is attacked' do
    sign_in_and_play
    click_button 'Attack' #or could do click_link 'Attack' if used an <a href="attack">Attack</a> in the play.erb file
    expect(page).to have_content 'Jess attacked Olly'
  end

  scenario 'reduce player 2 HP by 10' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).not_to have_content 'Olly: 60HP'
    expect(page).to have_content 'Olly: 50HP'
  end
end


# User has to - attack player 2
# User sees - confirmation of attack
