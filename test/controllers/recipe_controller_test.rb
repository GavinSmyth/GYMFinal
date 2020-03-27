require 'test_helper'

class RecipeControllerTest < ActionDispatch::IntegrationTest
  test "should get Recipe" do
    get recipe_Recipe_url
    assert_response :success
  end
  setup do
    @recipe = recipies(:one)
  end

  test "should search Recipe" do
    assert_difference('Recipe.count') do
      post recipe_url, find_recipe(params[:recipe])
    end
  end

end
