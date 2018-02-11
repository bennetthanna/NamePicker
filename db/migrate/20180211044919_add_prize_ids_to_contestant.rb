class AddPrizeIdsToContestant < ActiveRecord::Migration[5.0]
  def change
    add_column :contestants, :prize_ids, :text
  end
end
