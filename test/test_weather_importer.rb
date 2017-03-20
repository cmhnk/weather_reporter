require 'minitest/autorun'
require 'minitest/pride'
require 'weather_reporter'

class WeatherReporterTest < Minitest::Test

  def setup
    @weather = WeatherReporter::Weather.new('durham', 'nc')
    @current_conditions = WeatherReporter::CurrentConditions.new('durham', 'nc')
  end

  def test_weather_does_not_implement_url
    assert_raises WeatherReporter::NotImplementedError do
      @weather.url
    end
  end

  def test_current_conditions_inherits_get_method
    @current_conditions.payload
  end

  # test to_s method for each class (public)
end
