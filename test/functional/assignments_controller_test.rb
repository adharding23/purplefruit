require 'test_helper'

class AssignmentsControllerTest < ActionController::TestCase
  test "should get assignments" do
    get :assignments
    assert_response :success
  end

end
