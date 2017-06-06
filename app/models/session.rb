class Session < ApplicationRecord
  belongs_to :user

  validates :session_name, presence: true
  validates :n_pomodoro, presence: true
end
