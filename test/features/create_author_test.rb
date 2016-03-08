require "test_helper"

class CreateAuthorTest < Capybara::Rails::TestCase

  test "can add author" do

    visit root_path
    click_link "Add Author"

    # save_and_open_page

    within("#new_author") do
      fill_in "First name", with: "Bob"
      fill_in "Last name", with: "Loblaw"
      fill_in "Bio", with: "good guy"

      click_button "Add New Author"
    end

    ## Assert that this passed
    # 1. visit authors_path and check if "Bob"
    # 2. Author.find_by first_name: "Bob"

    visit authors_path

    # save_and_open_page

    assert_content page, "Bob"

  end

end
