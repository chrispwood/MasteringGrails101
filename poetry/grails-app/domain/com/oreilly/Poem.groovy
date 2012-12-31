package com.oreilly

class Poem {

	/**
		how to capture relationships
		static property (attribute of the class, not the instance)
		value is a map
		value of the keys in the hash map is the other persistent class on the other side of the hash map
	
		here's the single instance 1-to-1 relationship or be on the many side of a 1-to-many:
		static belongsTo = [ poet: Poem ]
		
		here's the many-to-many relationship
		static hasMany = [ poems: Poem ]
	**/	
	static belongsTo = [ poet: Poet ]
	
	String title
	String genre
	Date compositionDate
	Date publicationDate
	String poemText
	/*
	String text
	
	static mapping = {
		text(column: 'poem_text')
	}
	*/

    static constraints = {
	// upper bound of this constraint could alter the field of the schema
		poemText(size: 1..6000) // note grails default text size (varchar) is 255 bytes
		compositionDate(nullable: true)
		publicationDate(nullable: true)
		// where do I find terms like 'inList'?
		//		go to the grails documentation!
		genre(inList: [ 'Blank Verse', 
						'Limerick', 
						'Narrative', 
						'Epic',
						'Sonnet' ])

    }
}
