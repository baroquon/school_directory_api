module Api
  class ExperienceResource < JSONAPI::Resource
    attributes :school, :degree, :major, :minor, :start_date, :end_date
  end
end
