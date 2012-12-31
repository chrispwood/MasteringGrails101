package com.oreilly

class Poet {;
	
	static hasMany = [ poems: Poem ]
	
	// notice that I don't need to configure the orm - it's handled by convention
	String name
	/*
	String genre
	*/
	String language
	Date birthDate
	Date deathDate
	
	/* note that groovy metaprogramming allows grails to inject the save method to save the state to a db */
	
	/* Here's how you would do the or mapping if not using the defaults
		static mapping = {
			name(column: 'poet_name')
			genre(column: 'poem_type')
		}
	*/
	
    static constraints = {
		// your key needs to be listed first in here -
		name()
		// where we put our object state constraints
		deathDate(nullable: true) // notice the o-r mapping here
		/*
		// where do I find terms like 'inList'?
		//		go to the grails documentation!
		genre(inList: [ 'Blank Verse', 
						'Limerick', 
						'Narrative', 
						'Epic',
						'Sonnet' ])
						*/
		birthDate()
		language(inList: ['English', 'Spanish', 'French', 'Chinese'])
		
		// notice that you can use complex logic in the orm constraints...
		// genre(validator: { val, obj -> /* ... code in here ... */ })
    }
}
