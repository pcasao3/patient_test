require 'test_helper'

class FhcnPatientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fhcn_patient = fhcn_patients(:one)
  end

  test "should get index" do
    get fhcn_patients_url
    assert_response :success
  end

  test "should get new" do
    get new_fhcn_patient_url
    assert_response :success
  end

  test "should create fhcn_patient" do
    assert_difference('FhcnPatient.count') do
      post fhcn_patients_url, params: { fhcn_patient: {  } }
    end

    assert_redirected_to fhcn_patient_url(FhcnPatient.last)
  end

  test "should show fhcn_patient" do
    get fhcn_patient_url(@fhcn_patient)
    assert_response :success
  end

  test "should get edit" do
    get edit_fhcn_patient_url(@fhcn_patient)
    assert_response :success
  end

  test "should update fhcn_patient" do
    patch fhcn_patient_url(@fhcn_patient), params: { fhcn_patient: {  } }
    assert_redirected_to fhcn_patient_url(@fhcn_patient)
  end

  test "should destroy fhcn_patient" do
    assert_difference('FhcnPatient.count', -1) do
      delete fhcn_patient_url(@fhcn_patient)
    end

    assert_redirected_to fhcn_patients_url
  end
end
