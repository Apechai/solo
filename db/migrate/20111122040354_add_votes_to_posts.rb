class AddVotesToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :votes_count, :integer
  end
end
