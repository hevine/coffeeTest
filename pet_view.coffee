class window.PetView
  constructor:(@pet) ->

  formattedDescription: ->
    "<h2>#{@pet.name}</h2>"