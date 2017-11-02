class Pages::ZeitgeistLostPasswordPage < SitePrism::Page
  include NavigationComponent
  set_url "https://www.zeitgeistgothic.co.uk/my-account/lost-password/"
  set_url_matcher /zeitgeistgothic.co.uk\/my-account\/lost-password/

  element :home_nav, :xpath, '//*[@id="content"]/div/nav/a[1]'
  element :my_account_nav, :xath, '//*[@id="content"]/div/nav/a[2]'
  element :username_field, "input[id= 'user_login']"
  element :reset_password_button, :xpath, '//*[@id="post-8"]/div/div/form/p[3]/input[2]'

  def click_home_link
    home_nav.click
  end

  def click_my_account_link
    my_account_nav.click
  end

  def enter_username
    username_field.set(username)
  end

  def click_reset_password_button
    reset_password_button.click
  end


end