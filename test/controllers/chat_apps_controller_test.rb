require "test_helper"

class ChatAppsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chat_app = chat_apps(:one)
  end

  test "should get index" do
    get chat_apps_url
    assert_response :success
  end

  test "should get new" do
    get new_chat_app_url
    assert_response :success
  end

  test "should create chat_app" do
    assert_difference("ChatApp.count") do
      post chat_apps_url, params: { chat_app: { deadline: @chat_app.deadline, first_name: @chat_app.first_name, last_name: @chat_app.last_name, task: @chat_app.task } }
    end

    assert_redirected_to chat_app_url(ChatApp.last)
  end

  test "should show chat_app" do
    get chat_app_url(@chat_app)
    assert_response :success
  end

  test "should get edit" do
    get edit_chat_app_url(@chat_app)
    assert_response :success
  end

  test "should update chat_app" do
    patch chat_app_url(@chat_app), params: { chat_app: { deadline: @chat_app.deadline, first_name: @chat_app.first_name, last_name: @chat_app.last_name, task: @chat_app.task } }
    assert_redirected_to chat_app_url(@chat_app)
  end

  test "should destroy chat_app" do
    assert_difference("ChatApp.count", -1) do
      delete chat_app_url(@chat_app)
    end

    assert_redirected_to chat_apps_url
  end
end
