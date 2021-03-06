require_relative '../sections/navigation'
class Pages::ZeitgeistShopPage < SitePrism::Page

  section :nav, NavSection, '#masthead'


  set_url "https://www.zeitgeistgothic.co.uk/shop/"
  set_url_matcher /zeitgeistgothic.co.uk\/shop/

  element :home_nav_shop, :xpath, '//*[@id="content"]/div/nav/a'
  element :sorting_drop_down, :xpath, '//*[@id="main"]/div[1]/form/select'
  @@dropdown_num = rand(2..6)
  element :select_drop_down, :xpath, "//*[@id='main']/div[1]/form/select/option[#{@@dropdown_num}]"
  item_num = rand(12)
  element :select_item_via_image, :xpath, "//*[@id='main']/div[2]/ul/li[#{item_num}]/a[1]"
  element :select_item_via_button, :xpath, "//*[@id='main']/div[2]/ul/li[#{item_num}]/a[2]"
  page_num = rand(2..3)
  element :select_page_number, :xpath, "//*[@id='main']/div[1]/nav/ul/li[#{page_num}]/a"
  element :select_quantity_product_page, "input[name='quantity']"


  def click_home_link
    home_nav_shop.click
  end

  def click_drop_down
    sorting_drop_down.click
  end

  def select_drop_down_option
    select_drop_down.click
  end

  def correct_sort_url
    var = ['?orderby=popularity', '?orderby=rating', '?orderby=date', '?orderby=price', '?orderby=price-desc']
    index = (@@dropdown_num - 2)

    var[index]
  end

  def click_item_image_randomly_generated
    select_item_via_image.click
  end

  def click_select_options_button_randomly_generated
    select_item_via_button.click
  end

  def click_to_go_to_new_page
    select_page_number.click
  end

  def checking_for_product_page
    current_url != 'https://www.zeitgeistgothic.co.uk/shop/'
    select_quantity_product_page.visible?
  end

end