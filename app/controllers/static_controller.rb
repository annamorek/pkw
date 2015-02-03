class StaticController < ApplicationController
  def index
    @voivodeships = Voivodeship.all
  end
end
