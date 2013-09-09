class AddActiveUsersToHeartMetrics < ActiveRecord::Migration
  def change
    add_column :heart_metrics, :vbulletin4UsersActivePosts, :integer
    add_column :heart_isometrics, :vbulletin4UsersActivePosts, :datetime
    add_column :heart_metrics, :vbulletin4UsersActiveThreads, :integer
    add_column :heart_isometrics, :vbulletin4UsersActiveThreads, :datetime
    add_column :heart_metrics, :vbulletin4MessagesVisitorNew, :integer
    add_column :heart_isometrics, :vbulletin4MessagesVisitorNew, :datetime
    add_column :heart_metrics, :vbulletin4BlogsNew, :integer
    add_column :heart_isometrics, :vbulletin4BlogsNew, :datetime
    add_column :heart_metrics, :vbulletin4InfractionsNew, :integer
    add_column :heart_isometrics, :vbulletin4InfractionsNew, :datetime
    add_column :heart_metrics, :vbulletin4InfractionsNewWarning, :integer
    add_column :heart_isometrics, :vbulletin4InfractionsNewWarning, :datetime
  end
end
