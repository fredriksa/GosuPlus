module Gosuplus
  module GUI
    class GUI
      include Collision
      def initialize(renderer)
        @renderer = renderer
        @items = {}
      end

      def draw
        @renderer.draw(@items)
      end

      def update(mouse_x, mouse_y)
        @items.each {|key, element| element.update(mouse_x, mouse_y)}
      end

      def set_font(font)
        @font = font
      end

      def get_button(key)
        @items[key]
      end

      def add_button(key, button)
        @items[key] = button
      end

      def add_text(key, text, position)
        raise ArgumentError, 'Font has not been set!' unless @font
        @items[key] = Text.new(text, @font, position)
      end

      def add_icon(key, image, position)
        @items[key] = Icon.new(image, position)
      end
      
      def [](key)
        @items[key]
      end
    end
  end
end