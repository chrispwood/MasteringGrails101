/*
Lesson 05 Mastering Grails 101
URL:  http://shop.oreilly.com/product/0636920024798.do
*/

things=[] // a java arraylist
things.getClass().getName()
// notice that you can use all of your java arraylist functionality

things = [
	'Raindrop on roses',
	'Whiskers on kittens',
	'Bright copper kettles',
	'Warm woolen mittens'
]

println things[0]
println things[-1]
println things[0..1]

// Map
map = [:] // key value pairs
println map.getClass().getName() // linked hashmap
map = [ 
	publisher : "O'Reilly",
	subject: 'Grails',
	teachers: ['Tim', 'Matthew'],
	editors: [ 'Baby Boss', 'Kirk' ]
]
// groovy turns the keys into strings when I declare them in a literal way

println map
println map.publisher
println map.editors[0]

// use the [] square brackets to use a variable key lookup
mapKey = 'teachers'
println map[mapKey]
println map.get('subject')
// Teachers is a generic list (collection)
// This left shift operator means to append at the end of the list
map.teachers << 'Graeme'
println map.teachers