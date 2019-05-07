class TagsController < ApplicationController
  before_action :authorize!, only: [:new, :create, :show]

  def index
    @tags = Tag.all
  end

  def new
    @tag = Tag.new
  end

  def create
    @tag = Tag.new(tag_params)
    if @tag.save
      redirect_to tags_path
    else
      @errors = @tag.errors.full_messages
      render :new
    end
  end

  def show
    authorize!
    @tag = Tag.find(params[:id])
  end

  private

  def tag_params
    params.require(:tag).permit(:name)
  end
end
