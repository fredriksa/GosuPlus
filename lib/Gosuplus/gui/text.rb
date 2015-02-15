module Gosuplus
  module GUI
    class Text
      include Essentials
      attr_accessor :body
    
      def initialize(text, font, position = nil)
        position = Vec2.new(0, 0) if position.is_a? NilClass

        @text, @font = text, font
        @body = Body.new(position, font.text_width(text), font.height)
      end

      def update; end
      def draw; @font.draw(@text, @body.position.x, @body.position.y, 500); end

      def text=(new_text)
        @text = new_text
        @width = @font.text_width(text)
      end
    end
  end
end