require 'rubygems'
require 'rspec/expectations'
require 'watir-webdriver'



APP_PATH = '/Users/agolubev1/Desktop/SafariLauncher.ipa'
 



 def  capabilites       
 	{
    'platformName' =>  'iOS',
    'versionNumber' => '8.4',
    'deviceName'  =>   'iPhone 6',
    'app'        =>    APP_PATH,
    'udid'=>  '03aad7cc56446be7adccca4988873313ad951969',
	'autoWebview' => 'true',
	'safariAllowPopups'=>  'failse',
	'safariIgnoreFraudWarning' => 'true'

   
 
}

end
 
def absolute_app_path
  File.join(File.dirname(__FILE__), APP_PATH)
end
 
def server_url
  "http://0.0.0.0:4723/wd/hub"
end
 
def selenium
 @driver ||= Watir::Browser.for(:remote, :desired_caps => caps, :url => server_url)
  sleep 20
end
 