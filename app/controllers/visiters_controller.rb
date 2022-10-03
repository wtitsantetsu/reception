class VisitersController < ApplicationController
  def index
    @visiters = Visiter.all
  end
end
