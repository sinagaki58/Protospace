class TagsController < ApplicationController

  before_action :set_tag, only: :show

  def index
    @tags = ActsAsTaggableOn::Tag.most_used
  end

  def show
    @prototypes = Prototype.tagged_with(params[:name])
  end

private
  def set_tag
    @tag = Tag.find(params[:id])
  end
end
