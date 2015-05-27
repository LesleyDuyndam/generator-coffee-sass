###
  EXAMPLE Class
###

root = exports ? this

class root.EXAMPLE
  constructor: () ->
    @hello = "Hello World!"


  helloWorld: () ->
    console.log @hello
