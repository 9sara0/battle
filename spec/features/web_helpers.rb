def sign_in_and_play
  visit "/names"
  fill_in :player_1_name, :with => "Sarah"
  fill_in :player_2_name, :with => "Prashant"
  click_button "Submit"
end
