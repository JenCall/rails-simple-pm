class Project < ApplicationRecord
  has_many :tasks
  belongs_to :user

  def badge_color

  end

  def status

  end

end
