require "administrate/field/base"

class ShopNameField < Administrate::Field::Base

  def shop_name
    data.shopify_domain
  end
  
end
