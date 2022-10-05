require "test_helper"

class Socials::SocialsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get socials_socials_index_url
    assert_response :success
  end
end
