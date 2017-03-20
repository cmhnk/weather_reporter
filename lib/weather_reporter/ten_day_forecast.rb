module WeatherReporter
  class TenDayForecast < Weather

    def forecast
      vars = payload.map do |x|
        {
        title: x["title"],
        text: x["fcttext"]
        }
      end
    end

    def display
      forecast.map do |x|
        "#{x[:title]}'s forecast: #{x[:text]}"
      end
    end

    private def url
      "http://api.wunderground.com/api/#{token}/forecast10day/q/#{state}/#{city}.json"
    end

    private def payload
      @_payload ||= get["forecast"]["txt_forecast"]["forecastday"]
    end
  end
end
