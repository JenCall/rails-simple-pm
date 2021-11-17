class Task < ApplicationRecord
  belongs_to :project

  validates :status, inclusion: { in: ['not-started', 'in-progress', 'done'] }

  STATUS_OPTIONS = [
    ['Not started','not-started'],
    ['In progress','in-progress'],
    ['Done','done']
  ]
end
