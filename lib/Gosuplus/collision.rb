module Collision
  def self.rectangular_collision?(body, body2)
    b1 = generate_quadratic_sides body
    b2 = generate_quadratic_sides body2

    ((b1[:left] >= b2[:left] and b1[:left] <= b2[:right]) || (b2[:left] >= b1[:left] && b2[:left] <= b1[:right])) &&
    ((b1[:top] >= b2[:top] && b1[:top] <= b2[:bottom]) || (b2[:top] >= b1[:top] && b2[:top] <= b1[:bottom]))
  end

  def self.generate_quadratic_sides(body)
    @sides = {left: body.position.x, right: body.position.x + body.width, top: body.position.y, bottom: body.position.y + body.height}
  end
end