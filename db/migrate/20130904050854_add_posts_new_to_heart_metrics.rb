class AddPostsNewToHeartMetrics < ActiveRecord::Migration
  def change
    add_column :heart_metrics, :vbulletin4PostsNew, :integer
    add_column :heart_isometrics, :vbulletin4PostsNew, :datetime
  end
end
