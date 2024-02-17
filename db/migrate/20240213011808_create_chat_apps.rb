class CreateChatApps < ActiveRecord::Migration[7.1]
  def change
    create_table :chat_apps do |t|
      t.string :first_name
      t.string :last_name
      t.string :task
      t.date :deadline

      t.timestamps
    end
  end
end
