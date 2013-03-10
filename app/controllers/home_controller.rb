class HomeController < ApplicationController
  def index
    @job_postings = JobPosting.all
    @categories = Category.all
  end
end
