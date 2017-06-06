class CreateSessions < ActiveRecord::Migration[5.0]
  def change
    create_table :sessions do |t|
      t.string :session_name, null: false
      t.integer :n_pomodoro, null: false

      t.timestamps
    end
  end
end
