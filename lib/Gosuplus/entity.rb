module Gosuplus
  class Entity
    attr_accessor :id
    include DrawableRot

    def initialize(pos, image)
      @body = Body.new(pos, image.width, image.height)
      @image = image
    end
  end
end