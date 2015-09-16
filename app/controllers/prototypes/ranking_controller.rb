class Prototypes::RankingController < ApplicationController

  def index
    @prototypes = Prototype.order(likes_count: :desc).page(params[:page]).per(8)
  end
end
