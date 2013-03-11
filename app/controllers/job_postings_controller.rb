class JobPostingsController < ApplicationController

  def create
    @job_posting = JobPosting.new(params[:job_posting])
    if @job_posting.save
      redirect_to(@job_posting)
    else
      render :new
    end
  end

  def index
    @job_postings = JobPosting.all
  end

  def show
    @job_posting = JobPosting.find_by_id(params[:id])
    render :text => "No posting for that id" if @job_posting.nil?
  end

  def new
    @job_posting = JobPosting.new
  end

  def destroy
    JobPosting.destroy(params[:id])
    redirect_to :back
  end

  def edit
    @job_posting = JobPosting.find_by_id(params[:id])
    render :new
  end

  def update
    @job_posting = JobPosting.find(params[:id])
    if @job_posting.update_attributes(params[:job_posting])
      redirect_to(@job_posting, :notice => "Updated")
    else
      render :edit, :notice => "Edit failed"
    end
  end

end