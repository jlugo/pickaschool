class TeacherReviewsController < ApplicationController
  # GET /teacher_reviews
  # GET /teacher_reviews.json
  def index
    @teacher_reviews = TeacherReview.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @teacher_reviews }
    end
  end

  # GET /teacher_reviews/1
  # GET /teacher_reviews/1.json
  def show
    @teacher_review = TeacherReview.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @teacher_review }
    end
  end

  # GET /teacher_reviews/new
  # GET /teacher_reviews/new.json
  def new
    @teacher_review = TeacherReview.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @teacher_review }
    end
  end

  # GET /teacher_reviews/1/edit
  def edit
    @teacher_review = TeacherReview.find(params[:id])
  end

  # POST /teacher_reviews
  # POST /teacher_reviews.json
  def create
    @teacher_review = TeacherReview.new(params[:teacher_review])

    respond_to do |format|
      if @teacher_review.save
        format.html { redirect_to @teacher_review, notice: 'Teacher review was successfully created.' }
        format.json { render json: @teacher_review, status: :created, location: @teacher_review }
      else
        format.html { render action: "new" }
        format.json { render json: @teacher_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /teacher_reviews/1
  # PUT /teacher_reviews/1.json
  def update
    @teacher_review = TeacherReview.find(params[:id])

    respond_to do |format|
      if @teacher_review.update_attributes(params[:teacher_review])
        format.html { redirect_to @teacher_review, notice: 'Teacher review was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @teacher_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teacher_reviews/1
  # DELETE /teacher_reviews/1.json
  def destroy
    @teacher_review = TeacherReview.find(params[:id])
    @teacher_review.destroy

    respond_to do |format|
      format.html { redirect_to teacher_reviews_url }
      format.json { head :no_content }
    end
  end
end
