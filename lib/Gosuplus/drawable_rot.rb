module Gosuplus
  module DrawableRot
    def draw
      @image.draw_rot(@body.position.x, @body.position.y, @body.position.z, @body.a)
    end
  end
end