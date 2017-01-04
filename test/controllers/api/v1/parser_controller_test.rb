require 'test_helper'

class Api::V1::ParserControllerTest < ActionDispatch::IntegrationTest
  test "should get fecher" do
    get api_v1_parser_fecher_url
    assert_response :success
  end

  test "should get list" do
    get api_v1_parser_list_url
    assert_response :success
  end

end
