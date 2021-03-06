class User < ApplicationRecord
	 has_many :bridges
         has_one :company
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         has_many :bridges
         has_one :company
end
