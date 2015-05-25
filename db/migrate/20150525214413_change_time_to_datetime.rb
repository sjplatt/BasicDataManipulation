class ChangeTimeToDatetime < ActiveRecord::Migration
  def up
    change_column :tweets, :tTime, :datetime
  end

  def down
    change_column :tweets, :tTime, :time
  end
end
