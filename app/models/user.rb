class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  has_many :own_photos, class_name: "photo", foreign_key: "owner_id"

  has_many :Comments,  foreign_key: "author_id"


end