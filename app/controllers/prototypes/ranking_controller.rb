class Prototypes::RankingController < ApplicationController

  def index
    @prototypes = Prototype.all.page(params[:page]).per(8)
  end
end
