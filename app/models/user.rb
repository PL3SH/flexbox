class User < ApplicationRecord
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: Devise::JWT::RevocationStrategies::Null
  has_many :tasks, dependent: :destroy
  validates :email, presence: true, 
                    uniqueness: true, 
                    format: { with: URI::MailTo::EMAIL_REGEXP }
end
