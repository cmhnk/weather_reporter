require 'active_record'

ActiveRecord::Base.logger = Logger.new(STDERR)
ActiveRecord::Base.colorize_logging = false

ActiveRecord::Base.establish_connection(
    :adapter => "sqlite3",
    :dbfile  => "weather_reporter.sqlite"
)

ActiveRecord::Schema.define do
    create_table :current_conditions do |table|
        table.column :zip, :string
        table.column :temp_f, :decimal
        table.column :feels_like, :decimal
        table.column :relative_humidity, :decimal
        table.column :wind_mph, :decimal
        table.column :wind_gust_mph, :decimal
        table.column :precip_today, :decimal
    end

end
