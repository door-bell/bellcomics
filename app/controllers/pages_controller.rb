class PagesController < ApplicationController
  def index
    @comic = Comic.order("created_at").last
  end
  def about

  end
  def login

  end
end
