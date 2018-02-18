require 'rails_helper'

feature "User mark todo incomplete" do
  scenario "Successfully" do
    sign_in

    create_todo("Buy computer")

    click_on "Mark complete"
    click_on "Mark incomplete"

    expect(page).not_to display_completed_todo("Buy computer")

    expect(page).to display_todo("Buy computer")
  end
end
