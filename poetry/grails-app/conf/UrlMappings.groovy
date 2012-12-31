class UrlMappings {

	static mappings = {
		
		"/poet/$id"(controller: 'poet', action: 'showAll')
		
		// this is why controller/action does something.
		// if i delete the block below, everything goes away
		
		// ? means that the parameter is optional
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		"/"(view:"/index")
		"500"(view:'/error')
	}
}
