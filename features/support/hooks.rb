Before do |scenario|
    page = lambda {|klass| klass.new}
    @page = page
    $driver.start_driver
   end
   
After do |scenario|
    time = Time.new
    Dir.mkdir('report') unless Dir.exist?('report')
   
    sufix = ('fail' if scenario.failed?) || 'success'
    name = scenario.name.tr(' ', '_').downcase
    screenshot("report/#{sufix}_#{name}_#{time.day}-#{time.month}-#{time.year}.png")
    $driver.driver_quit
end