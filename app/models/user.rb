class User
    include Mongoid::Document

    field :name, type: String
    field :email, type: String

    validates :name, presence: true
    validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
end
