import com.oreilly.Poet

class BootStrap {

    def init = { servletContext ->;
		/*
		new Poet(name: 'Poe', 
						 genre: 'Narrative', 
						 language: 'English',
						 birthDate: new Date(1900-1809, 19, 0))*/
		//poet.save() // note that the save method is implicit to a grails domain class
//		println poet.save()
    }
    def destroy = {
    }
}
