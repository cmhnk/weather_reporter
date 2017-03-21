# Weather Reporter

This app interacts with the [Wunderground API](https://www.wunderground.com/weather/api/d/docs?d=index) to deliver weather content directly to a Terminal near you!

## Getting Started
Before using this app, you must create an account with Wunderground in order to obtain an API key.

1. Clone this repo by running `git clone https://github.com/cmhnk/weather_reporter.git`
2. Navigate to the `weather_reporter` directory, e.g., `cd weather_reporter`
3. Run `gem install bundler` and `bundle install`
4. Copy & paste your API key into `.env-example`, and rename the file to `.env`
5. Run `ruby -Ilib bin/report` to launch the reporter, and follow the prompts from there!
