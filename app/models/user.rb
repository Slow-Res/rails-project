class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :phone_number, format: { with: /\A\d{10}\z/, message: "should be 10 digits" }, allow_blank: true
  validates :date_of_birth, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :country, presence: true

  enum role: [:student, :teacher, :admin], _prefix: true


  has_many :enrollments
  has_many :courses, through: :enrollments

  def has_role?(role_name)
    self.role == role_name.to_s
  end

end
