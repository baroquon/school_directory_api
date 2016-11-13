module Api
  class PeopleController < ApplicationController
    def show
      include_resources = ['current_courses','past_experiences']
      person = Person.find(params[:id])
      serializer = JSONAPI::ResourceSerializer.new(PersonResource, include: include_resources,
        fields: {
          people: [
            :current_courses,
            :past_experiences,
            :first_name,
            :last_name,
            :email,
            :phone,
            :title,
            :role,
            :avatar
          ]
        }
      ).serialize_to_hash(PersonResource.new(person, nil))

      render json: serializer
    end

    def base_meta
      if params['action'] == 'index'
        super.merge(
          page: params['page']['number'] || 0,
          total: total_pages
        )
      else
        super
      end
    end
    def total_pages
      Person.count/(params['page']['size'].to_i || 10)
    end
  end
end
