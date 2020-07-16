require "administrate/field/base"

class StoreAddressField < Administrate::Field::Base

  def store_address
    data.nil? ? " " : data.address
  end

end
