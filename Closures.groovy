/* Lesson 6. Closures 
URL:  http://shop.oreilly.com/product/0636920024798.do
*/
things = [
	'Raindrop on roses',
	'Whiskers on kittens',
	'Bright copper kettles',
	'Warm woolen mittens'
]

// remember, enhanced arraylist
things.each {
	// this is a closure - a block of code that is also an object
	// creating an object and passing into a method
	thing -> println thing
}

things.eachWithIndex { thing, index -> println "${index+1}. ${thing}"}
// note closures with no parameters (gets magic 'it')
things.each {
	print it
}

c = { thing, index -> println "${index+1}. ${thing}" }
things.eachWithIndex(c)
// last param of a method call is a closure and you don't put it into the parens, they go outside.
// investigate the groovy jdk documentation