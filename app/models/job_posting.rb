class JobPosting < ActiveRecord::Base

  attr_accessible :title,:description,:expiry_date,:is_featured,:category_id,:position_type,:contract_type,:company_name,:company_website,:company_twitter,:location,:skills,:application_form_email,:email_message

  belongs_to :category

end
