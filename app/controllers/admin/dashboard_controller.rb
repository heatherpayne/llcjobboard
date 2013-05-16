class Admin::DashboardController < ApplicationController

	# before_filter :authorize

  def index
    @job_postings = JobPosting.all
    @categories = Category.all
  end
end
