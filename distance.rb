
class Distance
  
  def initialize
    #@brick = EV3::Brick.new(EV3::Connections::Bluetooth.new(PORT))
    #@brick.connect
    @font = Font.new(50)
  end

  def update
    @distance = rand(5..255) #@brick.get_sensor(DISTANCE_SENSOR, 0)
  end

  def tance
    Window.draw_font(750, 60,"#{@distance}",@font)
  end

end


