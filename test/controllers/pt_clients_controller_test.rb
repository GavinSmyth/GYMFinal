require 'test_helper'

class PtClientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pt_client = pt_clients(:one)
  end

  test "should get index" do
    get pt_clients_url
    assert_response :success
  end

  test "should get new" do
    get new_pt_client_url
    assert_response :success
  end

  test "should create pt_client" do
    assert_difference('PtClient.count') do
      post pt_clients_url, params: { pt_client: { Name: @pt_client.Name, PTName: @pt_client.PTName, personal_trainer_id: @pt_client.personal_trainer_id } }
    end

    assert_redirected_to pt_client_url(PtClient.last)
  end

  test "should show pt_client" do
    get pt_client_url(@pt_client)
    assert_response :success
  end

  test "should get edit" do
    get edit_pt_client_url(@pt_client)
    assert_response :success
  end

  test "should update pt_client" do
    patch pt_client_url(@pt_client), params: { pt_client: { Name: @pt_client.Name, PTName: @pt_client.PTName, personal_trainer_id: @pt_client.personal_trainer_id } }
    assert_redirected_to pt_client_url(@pt_client)
  end

  test "should destroy pt_client" do
    assert_difference('PtClient.count', -1) do
      delete pt_client_url(@pt_client)
    end

    assert_redirected_to pt_clients_url
  end
end
