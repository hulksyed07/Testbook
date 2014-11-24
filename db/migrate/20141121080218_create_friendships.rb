class CreateFriendships < ActiveRecord::Migration
  def change
    create_table :friendships do |t|
      t.references :user, index: true
      t.column :friend_id,:integer

      t.column :created_at ,:timestamp
    end
  end
end
