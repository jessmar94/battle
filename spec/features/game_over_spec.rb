feature 'Game over' do
  scenario 'when player hits on or below 0' do
    sign_in_and_play
    10.times do
      click_button 'Attack'
      click_button 'OK'
    end
    click_button 'Attack'
    click_button 'OK'
    expect(page).to have_content 'Game over'
  end

  scenario 'see player name who lost' do
    sign_in_and_play
    10.times do
      click_button 'Attack'
      click_button 'OK'
    end
    click_button 'Attack'
    click_button 'OK'
    expect(page).to have_content 'Olly, you lost!' 
  end
end