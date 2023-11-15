class Course < ApplicationRecord

    enum status: [:Active , :Disabled]

    validates :title, presence: true
    validates :code, presence: true, uniqueness: true
    validates :status, inclusion: { in: statuses.keys }
    validates :start_date, presence: true
    validates :end_date, presence: true
    validates :capacity, numericality: { only_integer: true, greater_than: 0 }, allow_blank: true

    has_many :enrollments
    has_many :users, through: :enrollments
    has_many :announcements

    scope :course_teacher, -> { joins(enrollments: :user).where(enrollments: { role: :teacher }).limit(1) }
 
  
end
