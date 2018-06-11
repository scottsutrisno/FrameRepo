require "application_system_test_case"

class PendingPackagesTest < ApplicationSystemTestCase
  setup do
    @pending_package = pending_packages(:one)
  end

  test "visiting the index" do
    visit pending_packages_url
    assert_selector "h1", text: "Pending Packages"
  end

  test "creating a Pending package" do
    visit pending_packages_url
    click_on "New Pending Package"

    click_on "Create Pending package"

    assert_text "Pending package was successfully created"
    click_on "Back"
  end

  test "updating a Pending package" do
    visit pending_packages_url
    click_on "Edit", match: :first

    click_on "Update Pending package"

    assert_text "Pending package was successfully updated"
    click_on "Back"
  end

  test "destroying a Pending package" do
    visit pending_packages_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pending package was successfully destroyed"
  end
end
