#类的继承

#js一直对继承 这个强大的概念，没有全心全意的接受，但coffeeScript 修补了这些漏洞,使继承 拥有了一流的体验

class Automobile
  honk: ->
    console.log "Beep!"
class Hatchback extends Automobile
  carAlarm: ->
    @honk()
    @honk()
    @honk()

myCar = new Hatchback()
myCar.honk()
myCar.carAlarm()

#如何想重载继承来的方法，只需要在子类中再次声明这个方法

class Truck extends Automobile
  honk: ->
    console.log "BRAAAAAP"
  radio:(volume) ->
    super volume + 2
  trunk =new Trunk
  trunk.radio 9 # "Radio at 11"

class PoliceCar extends Automobile
  honk: ->
    super
    console.log "Wee-oo wee-oo wee-oo"


