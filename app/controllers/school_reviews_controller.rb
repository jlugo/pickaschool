class SchoolReviewsController < ApplicationController
  before_filter :require_login
  
  # GET /school_reviews
  # GET /school_reviews.json
  def index
    @school_reviews = SchoolReview.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @school_reviews }
    end
  end

  # GET /school_reviews/1
  # GET /school_reviews/1.json
  def show
    @school_review = SchoolReview.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @school_review }
    end
  end

  # GET /school_reviews/new
  # GET /school_reviews/new.json
  def new
    @school_review = SchoolReview.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @school_review }
    end
  end

  # GET /school_reviews/1/edit
  def edit
    @school_review = SchoolReview.find(params[:id])
  end

  # POST /school_reviews
  # POST /school_reviews.json
  def create
    @school_review = SchoolReview.new(params[:school_review])

    respond_to do |format|
      if @school_review.save
        format.html { redirect_to @school_review, notice: 'School review was successfully created.' }
        format.json { render json: @school_review, status: :created, location: @school_review }
      else
        format.html { render action: "new" }
        format.json { render json: @school_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /school_reviews/1
  # PUT /school_reviews/1.json
  def update
    @school_review = SchoolReview.find(params[:id])

    respond_to do |format|
      if @school_review.update_attributes(params[:school_review])
        format.html { redirect_to @school_review, notice: 'School review was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @school_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /school_reviews/1
  # DELETE /school_reviews/1.json
  def destroy
    @school_review = SchoolReview.find(params[:id])
    @school_review.destroy

    respond_to do |format|
      format.html { redirect_to school_reviews_url }
      format.json { head :no_content }
    end
  end
end
