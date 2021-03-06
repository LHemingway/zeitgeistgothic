require_relative '../sections/navigation'
class Pages::ZeitgeistCheckoutPage < SitePrism::Page
  
  section :nav, NavSection, '#masthead'

	set_url "https://www.zeitgeistgothic.co.uk/checkout"
  set_url_matcher /zeitgeistgothic.co.uk\/checkout/

  element :first_name, '#billing_first_name'
  element :last_name, '#billing_last_name'
  element :company_name, '#billing_company'
  element :country, '#select2-billing_country-container'
  element :country_field, :xpath, '/html/body/span/span/span[1]/input'
  element :country_selector, :xpath, '//*[@id="select2-billing_country-result-vp36-AF"]'
  element :street_address, '#billing_address_1'
  element :apartment_number, '#billing_address_2'
  element :city, '#billing_city'
  element :state, '#billing_state'
  element :postcode, '#billing_postcode'
  element :phone, '#billing_phone'
  element :email, '#billing_email'
  element :create_account, '#createaccount'
  element :password, '#account_password'
  element :delivery_address_checkbox, '#ship-to-different-address-checkbox'
  element :delivery_name, '#shipping_first_name'
  element :order_notes, '#order_comments'
  element :successful_coupon, :xpath, '/*[@id="post-7"]/div/div/div[2]'
  element :paypal_button, :xpath, '//*[@id="place_order"]'


  def enter_first_name(name)
  	first_name.set(name)
  end

  def enter_last_name(name)
  	last_name.set(name)
  end

  def enter_company_name(name)
  	company_name.set(name)
  end

  def click_country
  	country.click
  end

  def enter_country(country)
  	country_field.set(country)
  end

  def select_country
    country_selector.click
  end

  def enter_street_address(street_name)
  	street_address.set(street_name)
  end

  def enter_apartment_number(number)
  	apartment_number(number)
  end

  def enter_city(city_name)
  	city.set(city_name)
  end

  def enter_state(state_name)
  	state.set(state_name)
  end

  def enter_postcode(postcode_value)
  	postcode.set(postcode_value)
  end

  def enter_phone(phone_number)
  	phone.set(phone_number)
  end

  def enter_email(email_address)
  	email.set(email_address)
  end

  def click_create_account
  	create_account.click
  end

  def enter_password(password_value)
  	password.set(password_value)
  end

  def click_delivery_address_checkbox
  	delivery_address_checkbox.click
  end

  def enter_delivery_name(name)
  	delivery_name.set(name)
  end

  def enter_order_notes(notes)
  	order_notes.set(notes)
  end

  def paypal_click
    paypal_button.click
  end

end