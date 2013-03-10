class User < ActiveRecord::Base
  attr_accessible :username,:email,:first_name,:last_name,:active_tokens
  has_many :job_postings
end
