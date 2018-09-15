class ManageController < ApplicationController
  def index
    @comics = Comic.take(3)
  end
end
