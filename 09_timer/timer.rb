class Timer

  attr_accessor :seconds #defines the getter(reader) and setter(writer) for seconds

  def initialize(seconds=0)
    @seconds = seconds
  end

  def time_string
    hours = @seconds / 3600
    minutes = @seconds / 60 % 60
    seconds = @seconds % 60
    "%02d:%02d:%02d" % [hours, minutes, seconds]
  end
end