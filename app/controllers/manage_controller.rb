class ManageController < ApplicationController
  def index
    @comics = Comic.all()
  end
end
