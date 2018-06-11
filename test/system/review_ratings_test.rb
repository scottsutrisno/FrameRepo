require "application_system_test_case"

class ReviewRatingsTest < ApplicationSystemTestCase
  setup do
    @review_rating = review_ratings(:one)
  end

  test "visiting the index" do
    visit review_ratings_url
    assert_selector "h1", text: "Review Ratings"
  end

  test "creating a Review rating" do
    visit review_ratings_url
    click_on "New Review Rating"

    click_on "Create Review rating"

    assert_text "Review rating was successfully created"
    click_on "Back"
  end

  test "updating a Review rating" do
    visit review_ratings_url
    click_on "Edit", match: :first

    click_on "Update Review rating"

    assert_text "Review rating was successfully updated"
    click_on "Back"
  end

  test "destroying a Review rating" do
    visit review_ratings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Review rating was successfully destroyed"
  end
end
