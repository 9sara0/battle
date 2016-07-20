require 'spec_helper'


RSpec.feature "Adding names" do
  scenario "User enters a new name" do
    visit "/names"

    fill_in :player_1_name, :with => "Sarah"
    fill_in :player_2_name, :with => "Prashant"
    click_button "Submit"
    expect(page).to have_text("Sarah vs. Prashant")
  end
end
