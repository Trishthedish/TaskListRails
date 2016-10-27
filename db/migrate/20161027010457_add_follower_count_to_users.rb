class AddFollowerCountToUsers < ActiveRecord::Migration
  def change
    add_column :users, :followercount, :integer
  end
end
