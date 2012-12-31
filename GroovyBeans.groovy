/* Lesson 7. Groovy Beans 
URL:  http://shop.oreilly.com/product/0636920024798.do
*/

// note that you don't need to declare privacy (public is default)
class Person {
	// note that instance variables are by default private
	// default getter / setters are defined by default
	// We could have set these as def (untyped)
	String name
	String gender
	int age

	/* We can override the defaults by declaring as in here:
	void setName(String n) {
		print "Set ${n}"
		this.name = n
	}
	*/
}

/*
def bb = new Person()
bb.name = 'Baby Boss'
println bb.name
*/

// note we have used a map to pass in the data
// don't need by default map syntax []
def bb = new Person(name: 'Baby Boss', gender: 'male', age: 12)
println bb.name + ": " + bb.age + ", " + bb.gender

// the def keyword is of type Object - essentially def means that the object is untyped.  This breaks standard protocols with java.