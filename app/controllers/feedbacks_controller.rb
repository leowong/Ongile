class FeedbacksController < ApplicationController
  layout "feedbacks"

  def index
    @feedbacks = Feedback.all
  end

  def show
    @feedback = Feedback.find(params[:id])
  end

  def new
    @feedback = Feedback.new
  end

  def edit
    @feedback = Feedback.find(params[:id])
  end

  def create
    @feedback = Feedback.new(params[:feedback])

    if @feedback.save
      redirect_to @feedback, :notice => 'Feedback was successfully created.'
    else
      render :action => "new"
    end
  end

  def update
    @feedback = Feedback.find(params[:id])

    if @feedback.update_attributes(params[:feedback])
      redirect_to @feedback, :notice => 'Feedback was successfully updated.'
    else
      render :action => "edit"
    end
  end

  def destroy
    @feedback = Feedback.find(params[:id])
    @feedback.destroy

    redirect_to feedbacks_url
  end
end
