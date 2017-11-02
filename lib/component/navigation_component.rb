module NavigationComponent
  element :home_nav, :xpath, '//*[@id="site-navigation"]/div[1]/ul/li[1]/a'
  element :cart_nav, :xpath, '//*[@id="site-navigation"]/div[1]/ul/li[2]/a'
  element :checkout_nav, :xpath, '//*[@id="site-navigation"]/div[1]/ul/li[3]/a'
  element :my_account_nav, :xpath, '//*[@id="site-navigation"]/div[1]/ul/li[4]/a'
  element :shop_nav, :xpath, '//*[@id="site-navigation"]/div[1]/ul/li[5]/a'

  def click_home_nav
    home_nav.click
  end

  def click_cart_nav
    cart_nav.click
  end

  def click_checkout_nav
    checkout_nav.click
  end

  def click_my_account_nav
    my_account_nav.click
  end

  def click_shop_nav
    shop_nav.click
  end


end