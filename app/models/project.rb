class Project < ApplicationRecord
  has_many :tasks
  belongs_to :user

  def badge_color

  end

  def status
    if tasks.all? { |task| task.complete? }
      'complete'
    elsif tasks.any? { |task| task.in_progress? }
      'in_progress'
    else 'not_started'
  end

end
