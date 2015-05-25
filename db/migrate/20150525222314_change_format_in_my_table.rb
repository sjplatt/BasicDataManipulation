class ChangeFormatInMyTable < ActiveRecord::Migration
  def up
    change_column :tweets, :tText, :text
    change_column :tweets, :tTime, :datetime
  end

  def down
    change_column :tweets, :tText, :string
    change_column :tweets, :tTime, :time
  end
end
