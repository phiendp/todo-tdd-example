require "rails_helper"

feature "User creates todo" do
  scenario "Successfully" do
    sign_in
    
    create_todo("Test todo")

    expect(page).to display_todo("Test todo")
  end
end
