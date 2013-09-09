class AddThanksToHeartMetrics < ActiveRecord::Migration
  def change
    add_column :heart_metrics, :vbulletin4MessagesThanksNew, :integer
    add_column :heart_isometrics, :vbulletin4MessagesThanksNew, :datetime
  end
end
