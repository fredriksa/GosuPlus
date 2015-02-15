class Body
  attr_accessor :position, :a, :width, :height
  
  def initialize(position, width, height, angle = 90)
    raise ArgumentError, 'Position is not a instance of Vec2' unless position.is_a? Vec2
    
    @position, @width, @height, @angle = position, width, height, angle
  end
end