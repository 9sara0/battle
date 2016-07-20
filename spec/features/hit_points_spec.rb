require 'spec_helper'


RSpec.feature "View hit points" do
  scenario "see Player 2 hit points" do
    visit "/names"

    fill_in :player_1_name, :with => "Sarah"
    fill_in :player_2_name, :with => "Prashant"
    click_button "Submit"

    expect(page).to have_text("Prashant 60HP")
  end
end
