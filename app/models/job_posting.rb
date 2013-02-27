class JobPosting < ActiveRecord::Base
  attr_accessible :title,description,created_date,updated_date,expiry_date,is_featured
end
