class Prototypes::RankingController < ApplicationController

  def index
    @prototypes = Prototype.all
  end
end
