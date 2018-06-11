class ReviewsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :authenticate_user!
  before_action :set_review, only: [:show, :edit, :update, :destroy]

  # GET /reviews
  # GET /reviews.json
  def index
    @user = current_user
    @reviews = Review.all
if params[:search]
  @reviews = Review.search(params[:search]).order("created_at DESC")
else
  @reviews = Review.all.order("created_at DESC")
end
  end

  def show
    @user = current_user
    @comments = Review.find(params[:id]).comments
    @new_comment = Comment.new
  end

  # GET /reviews/new
  def new
    @user = current_user
    @review = Review.new
  end

  # GET /reviews/1/edit
  def edit
    @user = current_user
  end

  # POST /reviews
  # POST /reviews.json
  def create
    @user = current_user
    @review = Review.new(review_params.to_unsafe_hash)

    respond_to do |format|
      if @review.save
        format.html { redirect_to @review, notice: 'Review was successfully created.' }
        format.json { render :show, status: :created, location: @review }
      else
        flash[:notice] = "#{@review.errors.full_messages.to_s}"
        format.html { render :new }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reviews/1
  # PATCH/PUT /reviews/1.json
  def update
    respond_to do |format|
      if @review.update(review_params)
        format.html { redirect_to @review, notice: 'Review was successfully updated.' }
        format.json { render :show, status: :ok, location: @review }
      else
        format.html { render :edit }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reviews/1
  # DELETE /reviews/1.json
  def destroy
    @review.destroy
    respond_to do |format|
      format.html { redirect_to reviews_url, notice: 'Review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review
      @review = Review.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def review_params
      params.require(:review).permit(:pros, :cons, :general, :overall_rating, :package_id, :saved_time, :cool_design, :advanced_features, :hard_customize, :many_files, :bad_navigation, :hard_to_learn, :more_customize, :better_docs, :less_bulky, :user_id)
    end
end
