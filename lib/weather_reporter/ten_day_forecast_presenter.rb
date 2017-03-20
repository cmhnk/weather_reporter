class TenDayForecastPresenter
  attr_reader :ten_day

  def initialize(city, state)
    @ten_day = WeatherReporter::TenDayForecast.new(city, state)
  end

  def output_report
    output_body
  end

  private def output_body
    puts "Ten Day Forecast:"
    ten_day.display.each {|x| ap x}
    puts ""
  end
end
