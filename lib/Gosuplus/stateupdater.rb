class StateUpdater
  def self.update(entities)
    entities.each(&:update)
  end
end