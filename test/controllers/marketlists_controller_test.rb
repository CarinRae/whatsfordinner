require 'test_helper'

class MarketlistsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get marketlists_index_url
    assert_response :success
  end

end
