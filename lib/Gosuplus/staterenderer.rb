class StateRenderer
  def self.render(entities)
    entities.each(&:draw)
  end
end