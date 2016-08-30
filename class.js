// Generated by CoffeeScript 1.10.0
(function() {
  var Airplane, Airport, plane, plane2;

  Airplane = (function() {
    function Airplane() {}

    Airplane.prototype.takeoff = function() {
      return console.log("Vrrrroooom!");
    };

    Airplane.prototype.describe = function() {
      return "A " + this.color + " plane";
    };

    Airplane.prototype.parkAt = function(airport) {
      return airport.store(this);
    };

    return Airplane;

  })();

  Airport = (function() {
    function Airport() {}

    Airport.prototype.store = function(plane) {
      if (this.hangar == null) {
        this.hangar = [];
      }
      return this.hangar.push(plane);
    };

    return Airport;

  })();

  plane = new Airplane();

  plane.color = "white";

  console.log(plane.describe());

  plane2 = new Airplane();

  plane2.color = "blue";

  plane.takeoff();

  plane2.takeoff();

}).call(this);
