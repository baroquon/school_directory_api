module Api
  class CourseResource < JSONAPI::Resource
    attributes :title, :description, :credit_hours
  end
end
