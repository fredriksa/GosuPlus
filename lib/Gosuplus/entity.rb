module Gosuplus
  class Entity
    include DrawableRot
    attr_accessor :id, :body

    def initialize(pos, image)
      @body = Body.new(pos, image.width, image.height)
      @image = image
    end

    def update

    end
  end
end