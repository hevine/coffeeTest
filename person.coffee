
class window.Person
  constructor: (@name) ->
  possessiveName: ->
    if @name[@name.length - 1] in ['s','x','z'] #检查@name属性的最后一个字母 ，如果这个 字母 是特殊字母 中的一个，要加'
      "#{@name}'"
    else
      "#{@name}'s"