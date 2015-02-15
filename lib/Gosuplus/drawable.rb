module Drawable
  def draw
    @image.draw(@body.position.x, @body.position.y, @body.position.z)
  end
end