class Checkpoint < ActiveRecord::Base
  belongs_to :requirement
  belongs_to :user
  belongs_to :group
end
