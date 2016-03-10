require "test_helper"

class RegisterUserTest < Capybara::Rails::TestCase
  # setup do
  #   Author.create! first_name: "Bob", last_name: "Loblaw", bio: "has a Law Blog"
  #   Book.create! photo_url: "book.jpg", title: "Test Book", price: "1"
  # end

  test "resister user" do

    visit root_path

    click_link "Log In Here"

    click_link "Register"

    # save_and_open_page

    within("#new_user") do
      fill_in "Name", with: "Jane"
      fill_in "Email", with: "doe@gmail.com"
      fill_in "Password", with: "123"
      click_button "Create User"
    end

    save_and_open_page

    assert_content page, "Welcome back, Jane!"

  end
end
