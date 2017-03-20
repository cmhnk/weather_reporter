module WeatherReporter
  class Weather
    attr_reader :city, :state

    def initialize(city, state)
      @city = city
      @state = state
    end

    def url
      raise NotImplementedError
    end

    def get
      HTTParty.get(url)
    end

    def token
      ENV['SECRET_KEY']
    end
  end
end
