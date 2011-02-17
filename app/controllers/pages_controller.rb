class PagesController < ApplicationController
  def home
    @feedback = Feedback.new
  end
end
