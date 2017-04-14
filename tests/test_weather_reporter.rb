require 'weather_reporter'
require 'minitest/autorun'

class CurrentConditions
  def payload
    JSON.read(separate_file)
  end
end

class TestWeatherReporter < Minitest::Test

  def test_weather_does_not_implement_url
    assert_raises WeatherReporter::NotImplementedError do
      WeatherReporter::Weather.new('durham', 'nc').url
    end
  end

  def test_current_conditions_presenter
    @cc = CurrentConditionsPresenter.new('durham', 'nc')
    assert_respond_to(@cc, 'output_report')
  end

  def test_ten_day_forecast_presenter
    @tdf = TenDayForecastPresenter.new('durham', 'nc')
    assert_respond_to(@tdf, 'output_report')
  end

  def test_sun_presenter
    @sun = SunPresenter.new('durham', 'nc')
    assert_respond_to(@sun, 'output_report')
  end

  def test_alerts_presenter
    @alerts = AlertsPresenter.new('durham', 'nc')
    assert_respond_to(@alerts, 'output_report')
  end

  def test_current_hurricanes_presenter
    @ch = CurrentHurricanesPresenter.new('durham', 'nc')
    assert_respond_to(@ch, 'output_report')
  end
end
