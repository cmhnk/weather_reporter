class SunPresenter
  attr_reader :sun

  def initialize(city, state)
    @sun = WeatherReporter::Sun.new(city, state)
  end

  def output_report
    output_body
  end

  private def output_body
    puts "Sunrise: #{sun.sunrise["hour"]}:#{sun.sunrise["minute"]} A.M."
    puts "Sunset: #{sun.sunset["hour"]}:#{sun.sunset["minute"]} P.M."
    puts ""
  end
end
