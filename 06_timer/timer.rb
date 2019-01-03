class Timer
  attr_accessor :seconds

  def seconds seconds=0
    @seconds=seconds
  end

  def time_string
    @time_string = splitToString(@seconds)
  end

  def splitToString seconds
    if seconds == 0
      return "00:00:00"
    end

    h = (seconds/60/60)
    m = (seconds/60)-(h*60)
    s = (seconds - (h * 60 * 60) - (m*60))
    timeArr = [h.to_s,m.to_s,s.to_s]

    timeArr.map! { |value|
      if value.to_i < 10
        value = "0" + value
      else
        value
      end
    }

    timeArr.join(":")
  end

  def extractTime measure, seconds
    if measure == "h"
    elsif measure == "m"
    elsif measure == "s"
    end
  end
end
