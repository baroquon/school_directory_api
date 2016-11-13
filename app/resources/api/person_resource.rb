module Api
  class PersonResource < JSONAPI::Resource
    attributes :first_name, :last_name, :email, :phone, :role, :title, :avatar
    has_many :current_courses
    has_many :past_experiences
  end
end
