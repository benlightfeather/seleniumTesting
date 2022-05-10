require "selenium-webdriver"
require "rspec"

# TEST: Sign up for blog
describe "Blog application" do
  describe "signup to the blog application" do
    it "confirm that a user can successfully signup" do
  		timestamp = Time.now.to_i
      driver = Selenium::WebDriver.for :firefox
  		# Go to signup form
  		driver.navigate.to "https://project-3-zmbv.herokuapp.com/"
  		# Fill out and submit form
  		# username_field = driver.find_element(id: 'user_username')
  		# username_field.send_keys("user#{timestamp}")
        sign_up_button = driver.find_element(class: 'btn btn-info')
  		sign_up_button.click

  		email_field = driver.find_element(id: 'email')
  		email_field.send_keys("user#{timestamp}@test.com")

  		password_field = driver.find_element(id: 'user_password')
  		password_field.send_keys("password")

        submit_button = driver.find_element(type: 'submit')
        submit_button.click
  		

  		# Confirm user is signed up successfully
  		phoebecat = driver.find_element(alt: 'Pet Gif')
  		# banner_text = banner.text
  		# expect(banner_text).to eq("Welcome to the alpha blog user#{timestamp}")

  		driver.quit
	  end
  end
end
