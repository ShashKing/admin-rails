class RateSetting < ApplicationRecord
  belongs_to :shop

  before_save do
    unless self.carrier_service && !self.enable_delivery
      begin
        carrier_service = ShopifyAPI::CarrierService.new
        carrier_service.name = "Happify Carrier Service"
        carrier_service.callback_url = "#{ENV['BASE_APP_URL']}/carrier_service/callback"
        carrier_service.service_discovery = true
        if carrier_service.save
          self.carrier_service_shopify_id = carrier_service.id
          self.carrier_service = true
        else
          logger.info "Unable to create carrier service,error: #{carrier_service.errors.inspect}"
        end
      rescue StandardError => e
        logger.info "Unable to create carrier service,error: #{e}"
      end
    end
  end

  # before_create do
  #   begin
  #     carrier_service = ShopifyAPI::CarrierService.new
  #     carrier_service.name = "Happify Carrier Service"
  #     carrier_service.callback_url = "#{ENV['BASE_APP_URL']}/carrier_service/callback"
  #     carrier_service.service_discovery = true
  #     if carrier_service.save
  #       self.carrier_service_shopify_id = carrier_service.id
  #       self.carrier_service = true
  #     end
  #   rescue StandardError => e
  #     logger.info "Unable to create carrier service,error: #{e}"
  #   end
  # end

  # before_destroy do
  #   begin
  #     carrrier_service = ShopifyAPI::CarrierService.find(self.carrier_service_shopify_id)
  #     carrrier_service.destroy
  #   rescue StandardError => e
  #     logger.info "Unable to delete carrier service,error: #{e}"
  #   end
  # end

end
