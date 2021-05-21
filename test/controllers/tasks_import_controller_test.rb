require 'test_helper'

class TasksImportControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get tasks_import_new_url
    assert_response :success
  end

  test "should get create" do
    get tasks_import_create_url
    assert_response :success
  end

end
