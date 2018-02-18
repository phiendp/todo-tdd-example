require 'rails_helper'

feature "User completes todo" do
  scenario "Successfully" do
    sign_in
    create_todo("This should be completed")

    click_on "Mark complete"

    expect(page).to have_css ".todos li.completed", text: "This should be completed"
  end
end
