class User < ActiveRecord::Base
  belongs_to :group
  belongs_to :role
  #has_secure_password
end
