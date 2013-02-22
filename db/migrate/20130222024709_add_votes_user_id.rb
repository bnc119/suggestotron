class AddVotesUserId < ActiveRecord::Migration
  def up
  	add_column :votes, :user_id, :integer
  end

  def down
  end
end
