// Generated by CoffeeScript 1.10.0
(function() {
  var Train, train, train2;

  Train = (function() {
    function Train(numCars, type) {
      if (type == null) {
        type = "diesel";
      }
      this.type = type;
      this.numCars = numCars;
      this.load = 0;
      this.capacity = numCars * 100;
    }

    Train.prototype.describe = function() {
      return ("A " + this.type + " train with " + this.numCars + " cars.") + ("Current filled:" + this.load + "/" + this.capacity + " tons.");
    };

    return Train;

  })();

  train = new Train(35);

  console.log(train.describe());

  train2 = new Train(20, "steam");

  console.log(train2.describe());

}).call(this);
