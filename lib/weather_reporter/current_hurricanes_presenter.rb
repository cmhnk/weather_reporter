class CurrentHurricanesPresenter
  attr_reader :hurricanes

  def initialize(city, state)
    @hurricanes = WeatherReporter::CurrentHurricanes.new
  end

  def output_report
    output_body
  end

  private def output_body
    puts "Current hurricanes around the world:"
    ap hurricanes.hurricanes
  end
end
