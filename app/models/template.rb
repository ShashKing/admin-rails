class Template < ApplicationRecord
  has_one_attached :avatar,dependent: :destroy
  belongs_to :shop
  belongs_to :template_category

  scope :specific_template, ->(template_category_id,name) { where("template_category_id = ? and name = ? and default_template = ?", template_category_id,name,true) }

  validate :liquid_syntax_check,on: :update

  def liquid_syntax_check
    begin
      Liquid::Template.parse("#{body}")
    rescue Liquid::SyntaxError => e
      errors.add(:base,e.to_s)
    end
  end

end
