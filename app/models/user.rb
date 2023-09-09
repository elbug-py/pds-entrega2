class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  enum :profile, {
  alumno: 0,
  profesor: 1
  }

  validates :nombre, presence: true
  validates :apellido, presence: true
  # has_one :tema
end
