Given('I fill login form') do
  @test = LoginPage.new
  @test.go()
end

When('I submit login') do
  @test.username.send_keys("rafa123") 
  @test.password.send_keys("rafa988221")
  @test.buttonLogin.click
end

Then('I have a title {string}') do |string|
  expect(@test.title.text).to eq(string)
end

