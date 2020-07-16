class StoreSetting < ApplicationRecord
  has_one_attached :logo
  belongs_to :shop

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
  validates :phone,:registered_number,:vat_number, length: { in: 6..20 },numericality: { only_integer: true }

  validate :correct_document_mime_type

  private

  def correct_document_mime_type
    if self.logo.attached? && !self.logo.content_type.in?(%w(image/png image/jpeg))
      errors.add(:logo, 'Must be a PNG or a JPG')
    end
  end

end
