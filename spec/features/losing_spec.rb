feature "losing the game" do
  scenario "Player 2 loses" do
    sign_in_and_play
    10.times {attack_cycle}
    click_button "Attack"
    expect(page).to have_content "Julie loses the game"
  end

end
