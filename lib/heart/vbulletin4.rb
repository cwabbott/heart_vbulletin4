module Heart
  module Vbulletin4
    def fetch_vbulletin4BlogsNew
      self.vbulletin4BlogsNew = Heart::Metric.find_by_sql("SELECT count(*) as the_count FROM blog WHERE dateline BETWEEN UNIX_TIMESTAMP('#{fulldate} 00:00:00') AND UNIX_TIMESTAMP('#{fulldate} 23:59:59')").first.the_count
    end
    
    def fetch_vbulletin4InfractionsNew
      self.vbulletin4InfractionsNew = Heart::Metric.find_by_sql("SELECT count(*) as the_count FROM infraction WHERE points > 0 AND dateline BETWEEN UNIX_TIMESTAMP('#{fulldate} 00:00:00') AND UNIX_TIMESTAMP('#{fulldate} 23:59:59')").first.the_count
    end
    
    def fetch_vbulletin4InfractionsNewWarning
      self.vbulletin4InfractionsNewWarning = Heart::Metric.find_by_sql("SELECT count(*) as the_count FROM infraction WHERE points = 0 AND dateline BETWEEN UNIX_TIMESTAMP('#{fulldate} 00:00:00') AND UNIX_TIMESTAMP('#{fulldate} 23:59:59')").first.the_count
    end
    
    def fetch_vbulletin4PostsNew
      self.vbulletin4PostsNew = Heart::Metric.find_by_sql("SELECT count(*) as the_count FROM post WHERE dateline BETWEEN UNIX_TIMESTAMP('#{fulldate} 00:00:00') AND UNIX_TIMESTAMP('#{fulldate} 23:59:59')").first.the_count
    end

    def fetch_vbulletin4UsersNew
      self.vbulletin4UsersNew = Heart::Metric.find_by_sql("SELECT count(*) as the_count FROM user WHERE joindate BETWEEN UNIX_TIMESTAMP('#{fulldate} 00:00:00') AND UNIX_TIMESTAMP('#{fulldate} 23:59:59')").first.the_count
    end
    
    def fetch_vbulletin4UsersActivePosts
      self.vbulletin4UsersActivePosts = Heart::Metric.find_by_sql("SELECT count(DISTINCT(userid)) as the_count FROM post WHERE dateline BETWEEN UNIX_TIMESTAMP('#{fulldate} 00:00:00') AND UNIX_TIMESTAMP('#{fulldate} 23:59:59')").first.the_count
    end
    
    def fetch_vbulletin4UsersActiveThreads
      self.vbulletin4UsersActiveThreads = Heart::Metric.find_by_sql("SELECT count(DISTINCT(postuserid)) as the_count FROM thread WHERE dateline BETWEEN UNIX_TIMESTAMP('#{fulldate} 00:00:00') AND UNIX_TIMESTAMP('#{fulldate} 23:59:59')").first.the_count
    end

    def fetch_vbulletin4ThreadsNew
      self.vbulletin4ThreadsNew = Heart::Metric.find_by_sql("SELECT count(*) as the_count FROM thread WHERE dateline BETWEEN UNIX_TIMESTAMP('#{fulldate} 00:00:00') AND UNIX_TIMESTAMP('#{fulldate} 23:59:59')").first.the_count
    end

    def fetch_vbulletin4ThreadsUpdated
      self.vbulletin4ThreadsUpdated = Heart::Metric.find_by_sql("SELECT count(DISTINCT(threadid)) as the_count FROM post WHERE dateline BETWEEN UNIX_TIMESTAMP('#{fulldate} 00:00:00') AND UNIX_TIMESTAMP('#{fulldate} 23:59:59')").first.the_count
    end

    def fetch_vbulletin4MessagesPrivateNew
      self.vbulletin4MessagesPrivateNew = Heart::Metric.find_by_sql("SELECT count(*) as the_count FROM pmtext WHERE dateline BETWEEN UNIX_TIMESTAMP('#{fulldate} 00:00:00') AND UNIX_TIMESTAMP('#{fulldate} 23:59:59')").first.the_count
    end
    
    def fetch_vbulletin4MessagesVisitorNew
      self.vbulletin4MessagesVisitorNew = Heart::Metric.find_by_sql("SELECT count(*) as the_count FROM visitormessage WHERE dateline BETWEEN UNIX_TIMESTAMP('#{fulldate} 00:00:00') AND UNIX_TIMESTAMP('#{fulldate} 23:59:59')").first.the_count
    end

    def fetch_vbulletin4MessagesThanksNew
      self.vbulletin4MessagesThanksNew = Heart::Metric.find_by_sql("SELECT count(*) as the_count FROM post_thanks WHERE date BETWEEN UNIX_TIMESTAMP('#{fulldate} 00:00:00') AND UNIX_TIMESTAMP('#{fulldate} 23:59:59')").first.the_count
    end
  end
end