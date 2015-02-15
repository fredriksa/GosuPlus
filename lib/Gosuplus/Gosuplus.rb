require 'gosu'
Dir['/lib/Gosuplus/.*rb'].each {|file| require file}

module Gosuplus
  class Window < Gosu::Window
  def initialize
    super 640, 480, false
    self.caption = "GosuPlus"
    @state_manager = StateManager.new(self)
    @state_manager.add(ExampleState.new(self, ResourceManager.new(self), StateInputHandler.new))
  end

  def update
    @state_manager.update
  end

  def draw
    @state_manager.draw
  end

  def button_down(id)
    @state_manager.handle_input(id, true)
  end

  def button_up(id)
    @state_manager.handle_input(id, false)
  end

  def needs_cursor?
    true
  end
end
end
