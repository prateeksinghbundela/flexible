require "application_system_test_case"

class LikeDoublesTest < ApplicationSystemTestCase
  setup do
    @like_double = like_doubles(:one)
  end

  test "visiting the index" do
    visit like_doubles_url
    assert_selector "h1", text: "Like Doubles"
  end

  test "creating a Like double" do
    visit like_doubles_url
    click_on "New Like Double"

    fill_in "Name", with: @like_double.name
    click_on "Create Like double"

    assert_text "Like double was successfully created"
    click_on "Back"
  end

  test "updating a Like double" do
    visit like_doubles_url
    click_on "Edit", match: :first

    fill_in "Name", with: @like_double.name
    click_on "Update Like double"

    assert_text "Like double was successfully updated"
    click_on "Back"
  end

  test "destroying a Like double" do
    visit like_doubles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Like double was successfully destroyed"
  end
end
