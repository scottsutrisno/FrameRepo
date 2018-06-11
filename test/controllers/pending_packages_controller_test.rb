require 'test_helper'

class PendingPackagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pending_package = pending_packages(:one)
  end

  test "should get index" do
    get pending_packages_url
    assert_response :success
  end

  test "should get new" do
    get new_pending_package_url
    assert_response :success
  end

  test "should create pending_package" do
    assert_difference('PendingPackage.count') do
      post pending_packages_url, params: { pending_package: {  } }
    end

    assert_redirected_to pending_package_url(PendingPackage.last)
  end

  test "should show pending_package" do
    get pending_package_url(@pending_package)
    assert_response :success
  end

  test "should get edit" do
    get edit_pending_package_url(@pending_package)
    assert_response :success
  end

  test "should update pending_package" do
    patch pending_package_url(@pending_package), params: { pending_package: {  } }
    assert_redirected_to pending_package_url(@pending_package)
  end

  test "should destroy pending_package" do
    assert_difference('PendingPackage.count', -1) do
      delete pending_package_url(@pending_package)
    end

    assert_redirected_to pending_packages_url
  end
end
