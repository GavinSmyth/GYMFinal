require 'test_helper'

class GymClassFinalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gym_class_final = gym_class_finals(:one)
  end

  test "should get index" do
    get gym_class_finals_url
    assert_response :success
  end

  test "should get new" do
    get new_gym_class_final_url
    assert_response :success
  end

  test "should create gym_class_final" do
    assert_difference('GymClassFinal.count') do
      post gym_class_finals_url, params: { gym_class_final: { Date: @gym_class_final.Date, PTName: @gym_class_final.PTName, Time: @gym_class_final.Time, Type: @gym_class_final.Type, personal_trainer_id: @gym_class_final.personal_trainer_id } }
    end

    assert_redirected_to gym_class_final_url(GymClassFinal.last)
  end

  test "should show gym_class_final" do
    get gym_class_final_url(@gym_class_final)
    assert_response :success
  end

  test "should get edit" do
    get edit_gym_class_final_url(@gym_class_final)
    assert_response :success
  end

  test "should update gym_class_final" do
    patch gym_class_final_url(@gym_class_final), params: { gym_class_final: { Date: @gym_class_final.Date, PTName: @gym_class_final.PTName, Time: @gym_class_final.Time, Type: @gym_class_final.Type, personal_trainer_id: @gym_class_final.personal_trainer_id } }
    assert_redirected_to gym_class_final_url(@gym_class_final)
  end

  test "should destroy gym_class_final" do
    assert_difference('GymClassFinal.count', -1) do
      delete gym_class_final_url(@gym_class_final)
    end

    assert_redirected_to gym_class_finals_url
  end
end
