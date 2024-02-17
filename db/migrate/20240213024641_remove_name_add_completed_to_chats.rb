class RemoveNameAddCompletedToChats < ActiveRecord::Migration[7.1]
  def change
    remove_column :chats, :first_name, :string
    remove_column :chats, :last_name, :string
    add_column :chats, :completed, :boolean, default: false
  end
end

