class CurrentConditionsPresenter
  attr_reader :cc

  def initialize(city, state)
    @cc = WeatherReporter::CurrentConditions.new(city, state)
  end

  def output_report
    if @cc.payload.nil?
      ap @cc.city_not_found
      exit!
    else
      output_body
    end
  end

  private def output_body
    puts ""
    puts "Current temperature: #{cc.temp_f} F"
    puts "Feels like: #{cc.feels_like} F"
    puts "Relative humidity: #{cc.relative_humidity}"
    puts "Winds: #{cc.wind_mph} mph, with gusts reaching #{cc.wind_gust_mph} mph"
    puts "Precipitation: #{cc.precip_today}"
    puts ""
  end
end
