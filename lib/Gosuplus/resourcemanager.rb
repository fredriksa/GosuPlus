class ResourceManager
  def initialize(window)
    @window = window
    @resources = {}
  end

  def load_resources(state_name)
    @resources = ResourceLoader.new(state_name, @window).load_resources
  end

  def [](*keys)
    return @resources[keys[0]] if keys.size == 1
    keys.map {|key| @resources[key]}
  end
end