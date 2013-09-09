class AddUsersNewToHeartMetrics < ActiveRecord::Migration
  def change
    add_column :heart_metrics, :vbulletin4UsersNew, :integer
    add_column :heart_isometrics, :vbulletin4UsersNew, :datetime
  end
end
