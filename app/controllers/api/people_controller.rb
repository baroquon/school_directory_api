module Api
  class PeopleController < ApplicationController
    def base_meta
      super.merge(
        page: params['page']['number'],
        total: total_pages
      )
    end
    def total_pages
      Person.count/(params['page']['size'].to_i || 10)
    end
  end
end
