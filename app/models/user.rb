class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true
  validate  :username_cannot_contain_blank_space


  def username_cannot_contain_blank_space
    if username.include?(" ")
      errors.add(:username, "Désolé, votre nom de poney ne peut pas contenir d'espace")
    end
  end
end
