#类的静态方法调用
class Bicycle
  constructor:(@color,@size,@frameType,@tireWidth,@handlebarType) ->
    #our constructor is empty for now

  @frameSizeByHeight = (riderHeight)->
    Math.floor riderHeight * 0.82
  @buildPackageDeal = (color,type,riderHeight) ->
    basics = [color,@frameSizeByHeight(riderHeight)]
    details = switch type
      when "road"
        ["road","23c","drop bars"]
      when "commuter"
        ["road","30c","flat bars"]
      when "mountain"
        ["mountain","2in","flat bars"]
    args = basics.concat details
    new Bicycle(args...)

myBike = Bicycle.buildPackageDeal "black","commuter",66
