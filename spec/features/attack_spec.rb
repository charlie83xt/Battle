feature 'Attacking' do
    scenario 'attack Player 2' do
      sign_in_and_play
      click_link 'Attack'
      expect(page).to have_content 'Charlie attacked Bob'
    end

    scenario 'reduce Player 2 HP by 10' do
      sign_in_and_play
      click_button 'Attack'
      click_link 'OK'
      expect(page).not_to_have_content 'Bob: 60HP'
      expect(page).to have_content "Bob: 50HP"
  end
end

