class ChangeTextFormatInMyTable < ActiveRecord::Migration
  def up
    change_column :tweets, :tText, :text
  end
  def down
    change_column :tweets, :tText, :string
  end
end
