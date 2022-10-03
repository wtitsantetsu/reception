class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(
      name: params[:name],
      name_kana: params[:name_kana],
      mail: params[:mail],
      company: params[:company],
      company_kana: params[:company_kana],
      slack_id: params[:slack_id],
      room_number: params[:room_number]
    )
    @user.save
    flash[:notice] = "ユーザー登録が完了しました"
    redirect_to("/users/index")
  end

end
