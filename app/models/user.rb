class User < ApplicationRecord
  # Include default devise modules. Others available are:
  has_many :applications
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
end
