module WeatherReporter
  class Sun
    include Weather

    def sunrise
      payload["sunrise"]
    end

    def sunset
      payload["sunset"]
    end

    private def url
      "http://api.wunderground.com/api/#{token}/astronomy/q/#{state}/#{city}.json"
    end

    private def payload
      @_payload ||= get["sun_phase"]
    end
  end
end
