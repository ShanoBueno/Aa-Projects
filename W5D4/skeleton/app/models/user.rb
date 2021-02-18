class User < ApplicationRecord
  has_many :enrollments,
    foreign_key: :student_id,
    class_name: :Enrollment
end
