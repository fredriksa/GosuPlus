module Gosuplus
  module GUI
    class Icon
      include Essentials
      attr_accessor :body

      def initialize(image, position)
        @image = image
        @body = Body.new(position, image.width, image.height)
      end

      def update; end
      def draw; @image.draw(@body.position.x, @body.position.y, 499); end
    end
  end
end