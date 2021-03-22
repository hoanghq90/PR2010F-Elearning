class Student < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: [:facebook]
  has_many :tests
  has_many :results, through: :tests
  def self.from_omniauth(auth)
  where(provider: auth.provider, uid: auth.uid).first_or_create do |student|
    student.email = auth.info.email
    student.password = Devise.friendly_token[0, 20]
    student.name = auth.info.name   # assuming the student model has a name
    # student.image = auth.info.image # assuming the student model has an image
  end
end
end
