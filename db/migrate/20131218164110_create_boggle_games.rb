class CreateBoggleGames < ActiveRecord::Migration
  def change
    create_table :boggle_games do |t|

      t.timestamps
    end
  end
end
