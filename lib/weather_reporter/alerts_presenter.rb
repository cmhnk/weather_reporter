class AlertsPresenter
  attr_reader :alerts

  def initialize(city, state)
    @alerts = WeatherReporter::Alerts.new(city, state)
  end

  def output_report
    output_body
  end

  private def output_body
    puts "Alerts:"
    alerts.response
    puts ""
  end
end
