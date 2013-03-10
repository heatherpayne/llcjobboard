class JobPostingsController < ApplicationController

  def create
    @job_posting = JobPosting.new(params[:job_posting])
    if @job_posting.save
      redirect_to(@job_posting)
    else
      render :action => :new
    end
  end

  def index
    @job_postings = JobPosting.all
  end

  def show
    @job_posting = JobPosting.find(params[:id])
  end

  def new
    @job_posting = JobPosting.new
  end

  def destroy
    JobPosting.destroy(params[:id])
    redirect_to '#index'
  end

end