class User
    include Mongoid::Document

    # Definindo campos para o documento
    field :name, type: String
    field :email, type: String

    # Validações, associações e lógica de negócios
    validates :name, presence: true
    validates :email, presence: true, uniqueness: true
end
