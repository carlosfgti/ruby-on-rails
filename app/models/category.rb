class Category
  include Mongoid::Document

  field :name, type: String

  has_many :products

  validates :name, presence: true
  validates :name, length: { maximum: 255 }
end
