class RemoveCreatedDateUpdatedDateFromJobPosting < ActiveRecord::Migration
  def up
    remove_column :job_postings, :created_date
    remove_column :job_postings, :updated_date
  end

  def down
    add_column :job_postings, :updated_date, :date
    add_column :job_postings, :created_date, :date
  end
end
