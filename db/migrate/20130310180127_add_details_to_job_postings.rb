class AddDetailsToJobPostings < ActiveRecord::Migration
  
  def change
    add_column :job_postings, :position_type, :string
    add_column :job_postings, :contract_type, :string
    add_column :job_postings, :company_name, :string
    add_column :job_postings, :company_website, :string
    add_column :job_postings, :company_twitter, :string
    add_column :job_postings, :location, :string
    add_column :job_postings, :skills, :text
    add_column :job_postings, :application_form_email, :string
    add_column :job_postings, :email_message, :text
  end
  
end
