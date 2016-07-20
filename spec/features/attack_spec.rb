require 'spec_helper'


RSpec.feature "Attack a Player & get confirmation" do
  scenario "Attack player 2" do

    sign_in_and_play
    click_button('Attack!')


    expect(page).to have_content("Sarah attacked Prashant")
  end
end
