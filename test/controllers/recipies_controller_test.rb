require 'test_helper'

class RecipiesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "should get Recipies" do
    get recipies_Recipies_url
    assert_response :success
  end
end
