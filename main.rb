require 'dxruby'
Window.resize(900,600)
image = Image.load("image/background.png")

require_relative 'timer'
require_relative 'color'
require_relative 'onoff'
require_relative 'distance'
require_relative 'count'

time = Timer.new
color = Color.new
onoff = Onoff.new
distance = Distance.new
count = Count.new

Window.loop do
  Window.draw(0,0,image)

  time.countup

  color.update
  color.colorling

  onoff.update
  onoff.switch

  distance.update
  distance.tance

  count.update
  count.switch

  if Input.key_push?(K_ESCAPE)
    break
  end

end
