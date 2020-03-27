require 'test_helper'

class PersonalTrainersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @personal_trainer = personal_trainers(:one)
  end

  test "should get index" do
    get personal_trainers_url
    assert_response :success
  end

  test "should get new" do
    get new_personal_trainer_url
    assert_response :success
  end

  test "should create personal_trainer" do
    assert_difference('PersonalTrainer.count') do
      post personal_trainers_url, params: { personal_trainer: { amountOfClients: @personal_trainer.amountOfClients, desription: @personal_trainer.desription, firstName: @personal_trainer.firstName, secondName: @personal_trainer.secondName } }
    end

    assert_redirected_to personal_trainer_url(PersonalTrainer.last)
  end

  test "should show personal_trainer" do
    get personal_trainer_url(@personal_trainer)
    assert_response :success
  end

  test "should get edit" do
    get edit_personal_trainer_url(@personal_trainer)
    assert_response :success
  end

  test "should update personal_trainer" do
    patch personal_trainer_url(@personal_trainer), params: { personal_trainer: { amountOfClients: @personal_trainer.amountOfClients, desription: @personal_trainer.desription, firstName: @personal_trainer.firstName, secondName: @personal_trainer.secondName } }
    assert_redirected_to personal_trainer_url(@personal_trainer)
  end

  test "should destroy personal_trainer" do
    assert_difference('PersonalTrainer.count', -1) do
      delete personal_trainer_url(@personal_trainer)
    end

    assert_redirected_to personal_trainers_url
  end
end
