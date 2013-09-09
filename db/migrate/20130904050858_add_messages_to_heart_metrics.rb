class AddMessagesToHeartMetrics < ActiveRecord::Migration
  def change
    add_column :heart_metrics, :vbulletin4MessagesPrivateNew, :integer
    add_column :heart_isometrics, :vbulletin4MessagesPrivateNew, :datetime
  end
end
