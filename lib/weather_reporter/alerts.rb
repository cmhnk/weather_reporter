module WeatherReporter
  class Alerts
    include Weather

    def response
      if payload.empty?
        ap "No weather alerts in #{formatted_city}"
      else
        if payload.size == 1
          ap "There is currently 1 weather alert in #{formatted_city}:"
          formatted_alert(payload)
        else
          ap "There are currently #{payload.size} weather alerts in #{formatted_city}:"
          formatted_alert(payload)
        end
      end
    end

    private def url
      "http://api.wunderground.com/api/#{token}/alerts/q/#{state}/#{city}.json"
    end

    private def payload
      @_payload ||= get["alerts"]
    end

    private def formatted_city
      city.gsub("%20", " ").upcase
    end

    private def formatted_alert(arr)
      arr.each do |x|
        ap "As of #{x["date"]} there is a #{x["description"]}."
      end
    end
  end
end
