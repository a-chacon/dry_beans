require 'test_helper'

class RoutesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  #
  test 'show all' do
    get routes_path

    assert_response :success
  end

  test 'show all with data' do
    create_list(:route, 5)
    get routes_path

    json_response = JSON.parse(@response.body)
    assert_equal 5, json_response.size
  end
end
