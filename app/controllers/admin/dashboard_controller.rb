class Admin::DashboardController < ApplicationController
  before_filter :authenticate_admin!

  def index
    @job_postings = JobPosting.all
    @categories = Category.all
  end
end
