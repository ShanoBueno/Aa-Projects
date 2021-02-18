class Course < ApplicationRecord
  has_many :enrollments,
    foreign_key: :course_id,
    class_name: :Enrollment
end
