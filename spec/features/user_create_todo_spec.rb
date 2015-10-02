require 'rails_helper'

feature "User can create todo" do 
  scenario "successfully" do
    visit root_path

    create_todo("Walk a dog")

    expect(page).to have_css("ul.todos li", text: "Walk a dog")
  end

  scenario "fails when empty" do
    visit root_path

    create_todo("")

    expect(page).to have_flash("Todos cannot be blank")
  end
end