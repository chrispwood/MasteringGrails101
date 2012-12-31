// This is a magic keyword - receives closures
dataSource {
    pooled = true
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = false
    cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory'
}
// environment specific settings
// notice here the closures that are embedded in environments - 
//	can use these to quickly switch between various environments
//	can create new environments (i.e. staging, qa, etc.)
//	can have multiple environments embedded at multiple levels
	// config slurper will take the underlyin items and make them root level
	// so dataSource in development will be the root dataSource level
	// also unioned with other root level dataSource items
environments {
    development {
		dataSource {
			// default is create-drop (when app starts, look into the db, create the db and when the app stops, drop the tables - no data but perfect schema)
			// create - create tables when app starts or, if they exist, run non-destructive migration (poor man's migration).  When app shuts down, drops the data but not the tables
			// update - create tables, make changes, bring down and do nothing
			// validate - check if the schema matches and throw exception if it doesn't 
			// in production, turn off dbCreate altogether
			dbCreate = "update"
		    // dbCreate = "create-drop" // one of 'create', 'create-drop', 'update', 'validate', ''
		    // to get this on disk rather than in memory, do this:  url = "jdbc:h2:db/mastering_grails_101"
			// standard h2: url = "jdbc:h2:mem:devDb;MVCC=TRUE;LOCK_TIMEOUT=10000"
			url = "jdbc:mysql://localhost/grails_demo"
		    driverClassName = "com.mysql.jdbc.Driver"
		    username = "grails_user"
			// what do we do about securing passwords?  look at config.groovy, grails.config.locations to point to the password file so this won't go into version control
		    password = "password"
		}
    }
    test {
        dataSource {
            dbCreate = "update"
            url = "jdbc:h2:mem:testDb;MVCC=TRUE;LOCK_TIMEOUT=10000"
        }
    }
    production {
        dataSource {
            dbCreate = "update"
            url = "jdbc:h2:prodDb;MVCC=TRUE;LOCK_TIMEOUT=10000"
            pooled = true
            properties {
               maxActive = -1
               minEvictableIdleTimeMillis=1800000
               timeBetweenEvictionRunsMillis=1800000
               numTestsPerEvictionRun=3
               testOnBorrow=true
               testWhileIdle=true
               testOnReturn=true
               validationQuery="SELECT 1"
            }
        }
    }
}
