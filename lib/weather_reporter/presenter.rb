class Presenter

  def initialize
    puts 'Welcome to the weather forecaster app!'
    puts ""
    puts 'Enter a city:'
    print '>> '
    @city = gets.chomp
    puts 'Enter a state:'
    print '>> '
    @state = gets.chomp
    output_body
  end

  def city
    @city
  end

  def state
    @state
  end

  def url_city
    city.gsub(" ", "%20")
  end

  def url_state
    state.gsub(" ", "%20")
  end

  private def output_body
    puts ""
    puts "You entered #{city.upcase}, #{state.upcase}"
    puts "Here is the current weather report for #{city.upcase}:"
    puts ""
  end
end
