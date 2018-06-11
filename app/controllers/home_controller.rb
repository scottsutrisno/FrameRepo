class HomeController < ApplicationController
  def index
  end

  def highlight
    sort_array = []
    packages = Package.all
    packages.each do |package|
      package.reviews.each do |review|
        sort_array.push(review.overall_rating)
      end
    end
    high = Review.where(overall_rating: "#{sort_array.reverse[0]}").sort
    @highlight = high[0].package

      reviews = @highlight.reviews
    review_average_array = []
    reviews.each do |review|
      review_average_array.push(review.overall_rating)
    end
    @average_rating = review_average_array.sum / review_average_array.length.to_f
 end
end