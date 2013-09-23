module HeartVbulletin4
  class Engine < ::Rails::Engine
    isolate_namespace HeartVbulletin4
    
    config.autoload_paths << File.expand_path("../lib/heart/vbulletin4", __FILE__)
    
    # Run migrations from inside the rails engine
    # instead of copying to app with heart:install:migrations
    initializer :append_migrations do |app|
      unless app.root.to_s.match root.to_s
        if Rails.version.match /\A3\..*\z/
          app.config.paths["db/migrate"] += config.paths["db/migrate"].expanded
        elsif Rails.version.match /\A4\..*\z/
          config.paths["db/migrate"].expanded.each do |expanded_path|
            app.config.paths["db/migrate"] << expanded_path
          end
        end
      end
    end
    
    # Need to add the fetch methods for vbulletin4 metrics
    initializer :extend_heart_metrics_for_heart_vbulletin4 do |app|
      Heart::Metric.class_eval do
        include Heart::Vbulletin4
      end
    end
  end
end
