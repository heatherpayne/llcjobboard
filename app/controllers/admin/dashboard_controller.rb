class Admin::DashboardController < ApplicationController

	# before_filter :authorize

  def index
    @job_postings = JobPosting.all
    @categories = Category.all
    @featured_jobs = JobPosting.find(:is_featured => :true)
  end
end
