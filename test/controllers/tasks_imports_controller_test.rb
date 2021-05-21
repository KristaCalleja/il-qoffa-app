require 'test_helper'

class TasksImportsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get tasks_imports_new_url
    assert_response :success
  end

  test "should get create" do
    get tasks_imports_create_url
    assert_response :success
  end

end
