module Api
  class PeopleController < ApplicationController
    include JSONAPI::ActsAsResourceController
  end
end
