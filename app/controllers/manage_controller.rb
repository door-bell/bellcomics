class ManageController < ApplicationController
  def index
    @comics = Comic.take(2)
  end
end
