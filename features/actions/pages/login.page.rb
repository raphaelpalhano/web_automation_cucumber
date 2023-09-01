# :css input[name="username"], :xpath //input[@name="username"], :name username, :id meuId

class LoginPage < SitePrism::Page

  element :username, "input[name='username']"
  element :password, "input[name='password']"
  element :buttonLogin, "input[type='submit']"
  element :title, :xpath, '//div/h1[contains(text(), "Accounts Overview")]'

  def go()
    visit "/"
  end


  def getTextField()
    return title.text
  end

  def submit()
    buttonLogin.click
  end
end  