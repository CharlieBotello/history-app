class StoriesController < ApplicationController
  has_many :location_stories
  has_many :stories through: :location_stories
end
