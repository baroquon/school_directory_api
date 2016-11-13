class Person < ApplicationRecord
  has_many :past_experiences, class_name: "Experience"
  has_many :current_courses, class_name: "Course"
end
