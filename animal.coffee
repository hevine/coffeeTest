class window.Animal
  @behaviors:->
    switch  @type
      when "cat" then ["meow",null]
      when "dog" then ["bark","wag"]
      when "rabbit" then [null,"hop hop"]
      when "horse","donkey"
        ["neigh",null]
      else [null,null]
  @fromHash: (data) ->
    animal = new @
    animal[key] = val for key,val of data
    animal
  @loadSeedData: ->
    animalData = [
      name:"Keylsey"
      type:"dog"
      age:2
      bread:"Labrador"
      description:"A sweet and loyal dog."
    ]
    for animal in animalData
      @fromHash animal

