require "rails_helper"

feature "User creates todo" do
  scenario "Successfully" do
    sign_in
    
    create_todo("Test todo")

    expect(page).to have_css ".todos li", text: "Test todo"
  end
end
