class HomeController < ApplicationController
  def index
    @job_postings = JobPosting.all
    @categories = Category.all

    # For devise
    @resource ||= Admin.new
    @devise_mapping ||= Devise.mappings[:admin]
  end

end
