require 'rails_helper'

feature "User completes todo" do
  scenario "Successfully" do
    sign_in
    create_todo("This should be completed")

    click_on "Mark complete"

    expect(page).to display_completed_todo("This should be completed")
  end
end
