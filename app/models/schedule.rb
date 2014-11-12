class Schedule < ActiveRecord::Base
  belongs_to :user
  has_many :hours

  # attr_accessible :title, :body
  attr_accessible :user_id # is this safe? how to do it better?
  attr_accessible :name, :hours_allotted, :notes

  def hours_left
    hours_logged = self.hours.map(&:hours).inject(0, :+)
    self.hours_allotted - hours_logged
  end
end
