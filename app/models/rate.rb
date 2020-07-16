class Rate < ApplicationRecord
  VAL_M = [["Order value",0],["Weight value",1]].freeze
  enum value_m: [:order_value,:weight_value]
  belongs_to :shop

  validates_presence_of :rate_name,:rate,:value_m,:zone_ids
  validates_uniqueness_of :rate_name, scope: :shop_id
  validates :minimum_order_value, numericality: true, if: :order_value_present? 
  validates :maximum_order_value, numericality: { greater_than: :minimum_order_value }, if: :order_value_present? 
  validates :minimum_weight_value, numericality: true, if: :weight_value_present? 
  validates :maximum_weight_value, numericality: { greater_than: :minimum_weight_value }, if: :weight_value_present? 

  def order_value_present?
    value_m == "order_value"
  end

  def weight_value_present?
    value_m == "weight_value"
  end

  before_save do
    if self.value_m == "order_value"
      self.minimum_weight_value = nil
      self.maximum_weight_value = nil
    else
      self.minimum_order_value = nil
      self.maximum_order_value = nil
    end
  end

end
