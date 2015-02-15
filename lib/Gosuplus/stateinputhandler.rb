class StateInputHandler
  def initialize
    @button_state = {}
  end

  def set_state(key, state)
    @button_state[key] = state
  end

  def get_state(key)
    @button_state[key]
  end
end