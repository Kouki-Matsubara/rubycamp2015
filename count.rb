
class Count

  def initialize
    #@brick = EV3::Brick.new(EV3::Connections::Bluetooth.new(PORT))
    #@brick.connect
    @font = Font.new(50)
    @count = 0
  end

  def update
    @color = rand(0..7)  #@brick.get_sensor(COLOR_SENSOR,2)
  end


  def switch
    if @color == 4
      @count += 1
    end
    Window.draw_font(750,515,"#{@count}",@font)

  end

end

