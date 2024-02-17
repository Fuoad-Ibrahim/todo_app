class CreateTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :tasks do |t|
      t.string :task
      t.date :deadline
      t.boolean :completed

      t.timestamps
    end
  end
end
