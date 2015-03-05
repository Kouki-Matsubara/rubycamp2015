
class Onoff

  def initialize
    #@brick = EV3::Brick.new(EV3::Connections::Bluetooth.new(PORT))
    #@brick.connect
    @font = Font.new(60)
  end

  def update
    @color = rand(0..7) #@brick.get_sensor(COLOR_SENSOR,2)
  end

  def switch
    if @color != (0 or 6 or 7)
      Window.draw_font(110, 510, "on road",@font)
    else
      Window.draw_font(110, 510, "off road",@font)
    end
  end

end


