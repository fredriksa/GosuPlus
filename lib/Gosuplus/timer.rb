class Timer
  def initialize(time, time_start = 0)
    @time, @time_ready = time_start, time
  end

  def update
    @time += 1 if @time < @time_ready
  end

  def ready?
    @time_ready == @time
  end

  def reset
    @time = 0
  end
end