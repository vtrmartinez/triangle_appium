require 'appium_lib'
require 'cucumber'

def caps
    { caps: {
        deviceName: 'Simulator',
        platformName: 'Android',
        app: (File.join(File.dirname(__FILE__), 'TrianguloApp.apk')),
        appPackage: 'com.br.triangle',
        appActivity: 'TriangleAppActivity',
        newCommandTimeout: '3600'
    }}
end

Appium::Driver.new(caps,true)
Appium.promote_appium_methods Object