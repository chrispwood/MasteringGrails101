// Tutorial from http://groovy.codehaus.org/Tutorial+2+-+Code+as+data%2C+or+closures

// closures allow functions to be first class object
// it designates whatever is passed to the function
square = { it * it }
println square(9)

// collect accepts as a parameter a function
println([ 1, 2, 3, 4 ].collect(square))

// closures with named parameters
printMapClosure = { key, value -> println key + "=" + value }
[ "Yue" : "Wu", "Mark" : "Williams", "sudha" : "Kumari" ].each(printMapClosure)

// Example: notice that the closure is interacting with the variable outside itself
fullString = ""
orderParts = ["BUY", 200, "Hot Dogs", "1"]
orderParts.each {
  fullString += it + " "
}
println fullString

myMap = ["China":1, "India":2, "USA":3]
result = 0
myMap.keySet().each({ result += myMap[it] })
println result

