class Prototypes::RankingController < ApplicationController

  def index
    @prototypes = Prototype.all.page(params[:page])
  end
end
