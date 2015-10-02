require 'rails_helper'

feature "User can register" do
  scenario "successfully" do
    visit new_registration_path

    sign_up_as({email: "person@example.com",
                password: "12345678",
                password_confirmation: "12345678"})

    click_on "Sign up"

    expect(page).to have_flash("Welcome! You have signed up successfully!")
  end

  scenario "with password mismatch" do
    visit new_registration_path

    sign_up_as({email: "person@example.com",
                password: "12345678",
                password_confirmation: "0000000"})

    click_on "Sign up"

    expect(page).to have_flash("Password mismatch")
  end
end