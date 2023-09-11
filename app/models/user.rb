class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :trackable, # Add :trackable module for user activity tracking
         :authentication_keys => [:email]


  
 enum profile: {
  alumno: 0,
  profesor: 1,
  supervisor: 2,
  admin: 3
}


  def supervisor?
    profile == "supervisor"
  end

  def admin?
    profile == "admin"
  end

  def profesor?
    profile == "profesor"
  end

  def alumno?
    profile == "alumno"
  end
  # validates :nombre, presence: true
  # validates :apellido, presence: true
  # has_one :tema
end
