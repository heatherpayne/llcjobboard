class JobPostingBelongsToCategory < ActiveRecord::Migration
  def change
    add_column :job_postings, :category_id, :int
    add_index :job_postings, :category_id    
  end
end
