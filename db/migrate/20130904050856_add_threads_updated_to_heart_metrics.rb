class AddThreadsUpdatedToHeartMetrics < ActiveRecord::Migration
  def change
    add_column :heart_metrics, :vbulletin4ThreadsNew, :integer
    add_column :heart_isometrics, :vbulletin4ThreadsNew, :datetime
    add_column :heart_metrics, :vbulletin4ThreadsUpdated, :integer
    add_column :heart_isometrics, :vbulletin4ThreadsUpdated, :datetime
  end
end
