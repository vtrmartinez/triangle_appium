Given("I launch app") do
    @page.(Triangle).verify_app_home
end
  
When("I send the form") do
    @page.(Triangle).calculate
end
  
Then("I must see the message {string}") do |expected|
    @page.(Triangle).validate_message(expected)
end