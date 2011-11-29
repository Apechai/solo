class ChangeVotesCountOfProducts < ActiveRecord::Migration
  def change
    change_column :posts, :votes_count, :integer, :default => 0
  end

  def down
  end
end
