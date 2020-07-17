class Shop < ActiveRecord::Base
  include ShopifyApp::ShopSessionStorage
  has_many :templates,dependent: :destroy
  has_many :template_categories,through: :templates,dependent: :destroy
  has_many :zones,dependent: :destroy
  has_one :rate_setting,dependent: :destroy
  has_one :store_setting,dependent: :destroy
  has_many :rates,dependent: :destroy

  # validates_inclusion_of :is_install, :in => [true, false]

  def api_version
    ShopifyApp.configuration.api_version
  end
end
