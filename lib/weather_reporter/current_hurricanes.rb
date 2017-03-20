module WeatherReporter
  class CurrentHurricanes < Weather

    def initialize
    end

    def hurricanes
      if payload["currenthurricane"].empty?
        "No current hurricanes to speak of!"
      else
        payload["currenthurricane"].each do |x|
          "#{x}"
        end
      end
    end

    private def url
      @_url = "http://api.wunderground.com/api/#{token}/currenthurricane/view.json"
    end

    private def payload
      @_payload ||= get
    end
  end
end
