class CreateJobPostings < ActiveRecord::Migration
  def change
    create_table :job_postings do |t|
      t.string :title,description,created_date,updated_date,expiry_date,is_featured

      t.timestamps
    end
  end
end
