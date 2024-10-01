class Post
  include Mongoid::Document
  include Mongoid::Timestamps
  field :title, type: String
  field :content, type: String

  validates :title, :content, presence: true
  validates :title, length: { maximum: 255 }
  validates :content, length: { maximum: 255 }
end
