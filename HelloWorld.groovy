/*
Lesson 03-04 Mastering Grails 101
URL:  http://shop.oreilly.com/product/0636920024798.do
*/

println "Hello World!"

emotion = 'angry' // java string
println emotion.getClass().getName()
s = "The monkey is ${emotion}" // groovy string (gstring)
// string interpolation
// this string is itself a function
// the interpolation allows us to make real calls or complex expressions
println s

// HEREDOC style
// you can do heredoc with single quotes '' but you won't get interpolation
// the '' model gives you optimization strategy
bigString = """
Dear Monkey,

Why are you so ${emotion}?

Yours,
Chris"""
println bigString