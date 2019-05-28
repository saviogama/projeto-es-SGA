require 'test_helper'

class AdministradorControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get administrador_new_url
    assert_response :success
  end

end
