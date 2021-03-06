require "rails_helper"

feature "user registration" do
  scenario "sign up with valid credentials" do
    sign_up_as "email@homebugh.info", "secret"

    expect(page).to have_content "A message with a confirmation link has been sent to your email address"
  end

  scenario "sign in with valid credentials" do
    create :user_example_com
    sign_in_as 'user@example.com', 'password'

    expect(page).to have_content "Sign out"
    expect(page).to have_content "Signed in successfully."
  end
end
