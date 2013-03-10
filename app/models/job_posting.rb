class JobPosting < ActiveRecord::Base
  attr_accessible :title,:description,:expiry_date,:is_featured,:category_id
  belongs_to :category
end
