class Enrollment < ApplicationRecord
  
  enum role: [:student, :teacher]
  belongs_to :user
  belongs_to :course
  validates :role, inclusion: { in: roles.keys }
  validates_uniqueness_of :user_id, scope: :course_id

end
