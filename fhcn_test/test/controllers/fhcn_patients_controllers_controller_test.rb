require 'test_helper'

class FhcnPatientsControllersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fhcn_patients_controller = fhcn_patients_controllers(:one)
  end

  test "should get index" do
    get fhcn_patients_controllers_url
    assert_response :success
  end

  test "should get new" do
    get new_fhcn_patients_controller_url
    assert_response :success
  end

  test "should create fhcn_patients_controller" do
    assert_difference('FhcnPatientsController.count') do
      post fhcn_patients_controllers_url, params: { fhcn_patients_controller: {  } }
    end

    assert_redirected_to fhcn_patients_controller_url(FhcnPatientsController.last)
  end

  test "should show fhcn_patients_controller" do
    get fhcn_patients_controller_url(@fhcn_patients_controller)
    assert_response :success
  end

  test "should get edit" do
    get edit_fhcn_patients_controller_url(@fhcn_patients_controller)
    assert_response :success
  end

  test "should update fhcn_patients_controller" do
    patch fhcn_patients_controller_url(@fhcn_patients_controller), params: { fhcn_patients_controller: {  } }
    assert_redirected_to fhcn_patients_controller_url(@fhcn_patients_controller)
  end

  test "should destroy fhcn_patients_controller" do
    assert_difference('FhcnPatientsController.count', -1) do
      delete fhcn_patients_controller_url(@fhcn_patients_controller)
    end

    assert_redirected_to fhcn_patients_controllers_url
  end
end
