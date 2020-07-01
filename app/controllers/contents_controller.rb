class ContentsController < ApplicationController
  def index
    @content=Content.new
  end

  def new
  end
  
  def create
    @content=Content.new(content_params)
    if @content.save
      flash[:notice] = '登録が完了しました。'
      redirect_to root_path
    else
      flash[:notice] = '登録に失敗しました。'
      redirect_to root_path
    end
  end
  
  def edit
    @content = Content.all
  end
  
  def update
  end
  
  def show
    @content = Content.all
  end

  def destroy
  end

  private
  def content_params
    params.require(:content).permit(:payment,:place,:rockpaperscissors).merge(user_id: current_user.id)
  end
end
