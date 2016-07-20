require 'spec_helper'


RSpec.feature "Adding names" do
  scenario "User enters a new name" do

    sign_in_and_play

    expect(page).to have_text("Sarah vs. Prashant")
  end
end
