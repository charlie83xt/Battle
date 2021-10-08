feature 'View hit points' do
    scenario 'see player 2 hit points' do
      visit('/')
      sign_in_and_play
      expect(page).to have_content 'Bob: 60HP'
    end
  end

  