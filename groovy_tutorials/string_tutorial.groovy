// Tutorial from http://groovy.codehaus.org/Tutorial+2+-+Code+as+data%2C+or+closures

stringDate = "2005-07-04"
dateArray = stringDate.split("-")
println dateArray
year = dateArray[0].toInteger()
println year
year = year + 1
println year
newDate = year + "-" + dateArray[1] + "-" + dateArray[2]
println newDate
