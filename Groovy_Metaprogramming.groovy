/* Lesson 8. Groovy Metaprogramming 
URL:  http://shop.oreilly.com/product/0636920024798.do

Metaprogramming is a neater, cleaner reflection api.
*/

// considering java reflection...
// This will get you a collection of the properties that the object has
// collect may elsewhere be known as map (from properties to names)
// In java, this would be much more than 1-liner
println String.metaClass.properties.collect { it.name }
println String.metaClass.methods.collect { it.name }

s = 'angry'
// no stringutils like every java developer ever before :)
//s.monkey() // but there's no monkey method in string!

// let's do metaprogramming...
String.metaClass.methodMissing = { name, args ->
	println "MISSING: ${name}(${args})"
}

//s.monkey() // now instead of an exception I gettin "missing"
// we can use the methodMissing method to handle missing methods!!!

// Let's create the method...
String.metaClass.monkey = { ->
	// delegate inside the metaclass means the object that I am running on
	// notice that I am inside the String class.  Delegate refers to the instance
	// running on in this class.  In this case, it is 's'
	"The monkey is ${delegate.toUpperCase()}" // last statement in closure is the return value
}
println s.monkey()

// metaprogramming is HUGE and worth a very long discussion.  This at least gives us a brief overview of the power of groovy.