module GUI
  class Button
    attr_accessor :timer
    def initialize(position, image, input_handler, key_id, text = nil, font = nil)
      @icon = Icon.new(image, position)
      @input_handler, @key_id = input_handler, key_id
      if text && font
        @text = Text.new(text, font)
        @text.center(@icon)
      end
    end

    def draw
      ButtonRenderer.draw(@icon, @text)
    end

    def update(x, y)
      @active = false if @active

      unless @timer.nil?
        if activated?(x, y)
          @timer.reset
          @active = true
        end
      else
        @active = false
      end

      @timer.update
    end

    def active?
      @active
    end

    private
    def activated?(x, y)
      Collision.rectangular_collision?(@icon.body, Body.new(Vec2.new(x, y), 1, 1)) && @timer.ready? && @input_handler.get_state(256)
    end
  end
end