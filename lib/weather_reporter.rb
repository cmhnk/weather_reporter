require 'awesome_print'
require 'httparty'
require 'dotenv/load'
require 'minitest/pride'


module WeatherReporter
end

require 'weather_reporter/weather'
require 'weather_reporter/current_conditions'
require 'weather_reporter/ten_day_forecast'
require 'weather_reporter/sun'
require 'weather_reporter/alerts'
require 'weather_reporter/current_hurricanes'

require 'weather_reporter/presenter'
require 'weather_reporter/current_conditions_presenter'
require 'weather_reporter/ten_day_forecast_presenter'
require 'weather_reporter/sun_presenter'
require 'weather_reporter/alerts_presenter'
require 'weather_reporter/current_hurricanes_presenter'

require 'weather_reporter/not_implemented_error'
