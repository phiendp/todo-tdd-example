require 'rails_helper'

feature "User completes todo" do
  scenario "Successfully" do
    sign_in

    click_on "Add a new todo"
    fill_in "Title", with: "This should be completed"
    click_on "Submit"

    click_on "Mark complete"

    expect(page).to have_css ".todos li.completed", text: "This should be completed"
  end
end
