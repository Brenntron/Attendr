require 'rails_helper'

RSpec.feature "UserLooksAtLeaderboards", type: :feature do

  scenario "user looks at leaderboard" do
    Fabricate(:user, first_name: "Brennan", last_name: "Willingham")
    visit students_path
    page.should have_css(".leaderboard")
    within("ul.leaderboard") do
      page.should have_css("li:nth-child(1)")
    end
  end
end
