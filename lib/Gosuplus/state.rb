module Gosuplus
  class State
    def initialize(window, rm, input_handler)
      @window, @rm, @input_handler = window, rm, input_handler
      @GUI = GUI::GUI.new(GUIRenderer.new)
      @objects = []
    end

    def update
      StateUpdater.update(@objects)
      @GUI.update(@window.mouse_x, @window.mouse_y)
    end

    def draw
      StateRenderer.render(@objects)
      @GUI.draw
    end

    def handle_input(key, state)
      @input_handler.set_state(key, state)
    end

    def load; end
    def on_load; @rm.load_resources(self.class.name); load; end
    def on_exit; end

    private
    def add_entity(entity); @objects << entity; end
  end
end