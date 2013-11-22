// Tutorial derived from http://groovy.codehaus.org/Tutorial+1+-+Getting+started

// Hello World
println "Hello, World!"

// Expression
123+45*67

// Variables
x = 1
println x

x = new java.util.Date()
println x

x = -3.1499392
println x

x = "Hi"
println x

// Lists and Maps
// a list
myList = [1776, -1, 33, 99, 0, 928734928763]
println myList[0]
println myList.size()

// a map
scores = ["Brett":100, "Pete":"Did not finish", "Andrew":86.87934]
println scores["Pete"]
println scores.Pete
scores["Pete"] = 3
println scores["Pete"]

// to create an empty map or list
emptyMap = [:]
emptyList = []
println emptyMap.size()
println emptyList.size()

// Conditionals
amPM = Calendar.getInstance().get(Calendar.AM_PM)
if(amPM == Calendar.AM) {
  println("Good morning")
} else {
    println("Good evening")
}

// Boolean Expressions
myBooleanVariable = true
titanicBoxOffice = 1234600000
titanicDirector = "James Cameron"

trueLiesBoxOffice = 219000000
trueLiesDirector = "James Cameron"

returnOfTheKingBoxOffice = 752200000
returnOfTheKingDirector = "Peter Jackson"

theTwoTowersBoxOffice = 581200000
theTwoTowersDirector = "Peter Jackson"

println titanicBoxOffice > returnOfTheKingBoxOffice
println titanicBoxOffice >= returnOfTheKingBoxOffice
println titanicBoxOffice >= titanicBoxOffice
println titanicBoxOffice > titanicBoxOffice
println titanicBoxOffice + trueLiesBoxOffice < returnOfTheKingBoxOffice + theTwoTowersBoxOffice

println titanicDirector > returnOfTheKingDirector
println titanicDirector < returnOfTheKingDirector
println titanicDirector >= "James Cameron"
println titanicDirector == "James Cameron"

if(titanicBoxOffice + trueLiesBoxOffice > returnOfTheKingBoxOffice + theTwoTowersBoxOffice) {
  println(titanicDirector + " is a better director than " + returnOfTheKingDirector)
}

// Testing if a key is in a map
suvMap = ["Acura MDX":"\$36,700", "Ford Explorer":"\$26,845"]
if(suvMap["Hummer H3"] != null) {
  println("A Hummer H3 will set you back " + suvMap["Hummer H3"]);
}

// How to get the class of a variable
println suvMap.getClass()
