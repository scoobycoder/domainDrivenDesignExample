require 'date'

class Treasury

  def initialize(dollar)
    @dollar = dollar
  end

  def set_current_year
    @year = Time.now.year
  end

  def create_serial_number
    time = Time.now
    @serial = (time.year.to_s + '023423421')[2..8]
  end

  def print
    @dollar.year = @year
    @dollar.ink_complete = true
    @dollar.serial_number = @serial
    @dollar
  end

end