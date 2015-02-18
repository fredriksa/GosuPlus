module Gosuplus
  class Entity
    include DrawableRot
    attr_accessor :id, :body

    def initialize(pos, image, angle = 0)
      @body = Body.new(pos, image.width, image.height, angle)
      @image = image
    end

    def update; end
  end
end