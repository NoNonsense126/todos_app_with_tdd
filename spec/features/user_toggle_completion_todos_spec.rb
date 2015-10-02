require 'rails_helper'

feature "User can toggle feature completion" do
  scenario "completed" do
    visit root_path

    create_todo("Walk the dog")

    click_on "Complete"

    expect(page).to have_css("ul.todos li.completed", text: "Walk the dog")
  end

  scenario "mark incomplete" do
    visit root_path

    create_todo("Walk the dog")

    click_on "Complete"

    click_on "Mark incomplete"

    expect(page).not_to have_css("ul.todos li.completed", text: "Walk the dog")
  end
end