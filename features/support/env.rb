require 'cucumber'
require 'rspec'
require 'pry'
require 'appium_lib'

def caps
 {
   caps: {
     deviceName: 'Pixel XL',
     platformName: 'Android',
     app: (File.join(File.dirname(__FILE__), 'TrianguloApp.apk')),
     newCommandTimeout: '3600'
   }
 }
end

Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object