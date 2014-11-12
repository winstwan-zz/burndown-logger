class Hour < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :schedule_id, :hours, :notes
end
