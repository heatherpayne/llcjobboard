class ChangeDescriptionToTextOnJobPosting < ActiveRecord::Migration
  def change
    change_column :job_postings, :description, :text
  end
end
