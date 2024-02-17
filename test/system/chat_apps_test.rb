require "application_system_test_case"

class ChatAppsTest < ApplicationSystemTestCase
  setup do
    @chat_app = chat_apps(:one)
  end

  test "visiting the index" do
    visit chat_apps_url
    assert_selector "h1", text: "Chat apps"
  end

  test "should create chat app" do
    visit chat_apps_url
    click_on "New chat app"

    fill_in "Deadline", with: @chat_app.deadline
    fill_in "First name", with: @chat_app.first_name
    fill_in "Last name", with: @chat_app.last_name
    fill_in "Task", with: @chat_app.task
    click_on "Create Chat app"

    assert_text "Chat app was successfully created"
    click_on "Back"
  end

  test "should update Chat app" do
    visit chat_app_url(@chat_app)
    click_on "Edit this chat app", match: :first

    fill_in "Deadline", with: @chat_app.deadline
    fill_in "First name", with: @chat_app.first_name
    fill_in "Last name", with: @chat_app.last_name
    fill_in "Task", with: @chat_app.task
    click_on "Update Chat app"

    assert_text "Chat app was successfully updated"
    click_on "Back"
  end

  test "should destroy Chat app" do
    visit chat_app_url(@chat_app)
    click_on "Destroy this chat app", match: :first

    assert_text "Chat app was successfully destroyed"
  end
end
