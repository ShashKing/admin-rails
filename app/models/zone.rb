class Zone < ApplicationRecord
  belongs_to :shop
  enum zone_status: [:inactive,:active]

  validates :zone_name,:zip_code, presence: true
  validates_uniqueness_of :zone_name, scope: :shop_id

  validate :zip_check

  private

  def zip_check
    input_zip_array = self.zip_code.split(" ")
    saved_array = Zone.where.not(id: self.id).where(shop_id: shop.id).pluck(:zip_code).join(" ").split(" ").uniq
    return if saved_array.blank?
    input_zip_array.each do |input_zip|
      if saved_array.include?(input_zip)
        errors.add(:zip_code,"#{input_zip} has already taken")
        return
      end
    end
  end

end
