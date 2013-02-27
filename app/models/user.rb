class User < ActiveRecord::Base
  attr_accessible :username,email,first_name,last_name
end
