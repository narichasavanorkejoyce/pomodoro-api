class Session < ApplicationRecord
  belongs_to :user

  validates :session_name, presence: true
  validates :n_pomodoro, presence: true
  validates_numericality_of :n_pomodoro, :greater_than_or_equal_to => 0
end
