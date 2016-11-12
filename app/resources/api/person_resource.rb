module Api
  class PersonResource < JSONAPI::Resource
    attributes :first_name, :last_name, :email, :phone, :role, :title, :avatar
    has_many :courses, :experiences
  end
end
