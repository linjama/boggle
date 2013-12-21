class AddLettersToBoggleGame < ActiveRecord::Migration
  def change
    add_column :boggle_games, :letters, :string
  end
end
