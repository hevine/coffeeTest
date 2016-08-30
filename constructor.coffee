#constructor

class Train
  constructor:(numCars,type = "diesel")->
      @type = type
      @numCars =numCars
      @load = 0
      @capacity = numCars * 100
  describe:->
    "A #{@type} train with #{@numCars} cars." +
      "Current filled:#{@load}/#{@capacity} tons."

train = new Train(35)
console.log train.describe()
train2 = new Train 20,"steam"
console.log train2.describe()

