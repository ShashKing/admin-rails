require "administrate/field/base"

class StoreAddressField < Administrate::Field::Base

  def store_address
    data.nil? ? " " : data.address
  end

    def store_email
    data.nil? ? " " : data.email
  end

  def store_phone_no
    data.nil? ? " " : data.phone
  end

  def store_vat_number
    data.nil? ? " " : data.vat_number
  end

  def store_registered_number
    data.nil? ? " " : data.registered_number
  end

end
