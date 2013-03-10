class CreateJobPostings < ActiveRecord::Migration
  def change
    create_table :job_postings do |t|
      t.string :title
      t.string :description
      t.date :created_date
      t.date :updated_date
      t.date :expiry_date
      t.boolean :is_featured
      t.timestamps
    end
  end
end
