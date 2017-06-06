class SessionSerializer < ActiveModel::Serializer
  attributes :id, :session_name, :n_pomodoro, :created_at, :updated_at
end
