// Tutorial from http://groovy.codehaus.org/Tutorial+2+-+Code+as+data%2C+or+closures

myFileDirectory = "/Users/cwood/projects/groovy/"
myFileName = "tutorial1.groovy"
myFile = new File(myFileDirectory + myFileName)
printFileLine = { println "File line: " + it }
myFile.eachLine(printFileLine)
