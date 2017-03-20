module WeatherReporter
  class CurrentConditions < Weather

    def temp_f
      payload["temp_f"]
    end

    def feels_like
      payload["feelslike_f"]
    end

    def relative_humidity
      payload["relative_humidity"]
    end

    def wind_mph
      payload["wind_mph"]
    end

    def wind_gust_mph
      payload["wind_gust_mph"]
    end

    def precip_today
      payload["precip_today_string"]
    end

    private def payload
      @_payload ||= get["current_observation"]
    end

    private def url
      @_url = "http://api.wunderground.com/api/#{token}/conditions/q/#{state}/#{city}.json"
    end
  end
end
