class CreateContestants < ActiveRecord::Migration[5.0]
  def change
    create_table :contestants do |t|
      t.string :name

      t.timestamps
    end
  end
end
