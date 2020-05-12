class AddUserIdToSpendings < ActiveRecord::Migration[5.0]
  def change
    add_column :spendings, :user_id, :integer
  end
end
