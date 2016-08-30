class Airplane
  takeoff: ->
    console.log "Vrrrroooom!"
  describe: ->
    "A #{@color} plane"
    #用@来替换出现的this
  parkAt:(airport)->
    airport.store @


class Airport
  store:(plane)->
    @hangar ?=[]
    @hangar.push plane
#Ariplane 类能被实例化多次

plane = new Airplane()
plane.color = "white"
console.log plane.describe()

plane2 = new Airplane()
plane2.color = "blue"


plane.takeoff()
plane2.takeoff()
