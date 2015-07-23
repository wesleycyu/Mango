class Admin::UsersController < UsersController
  before_action :check_admin
  skip_before_action :check_admin, only: [:return]

  def index
    @users = User.all.page(params[:page]).per(5)
  end

  def become
    user = User.find(params[:id])
    session[:previous_user] = current_user.id
    session[:user_id] = user.id
    redirect_to movies_path, notice: "Welcome back, #{user.firstname}!"
  end

  def return
    byebug
    user = session[:previous_user]
    session[:user_id] = user
    session[:previous_user] = nil
    redirect_to admin_users_path
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to admin_users_path, notice: "#{@user.full_name} was created!"
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update_attributes(user_params)
      redirect_to admin_users_path, notice: "#{@user.full_name} was updated successfully!"
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    if current_user == @user
      redirect_to admin_users_path, notice: "You can not delete yourself!"
    else
      UserMailer.deletion_email(@user).deliver_now
      @user.destroy
      redirect_to admin_users_path, notice: "#{@user.full_name} was deleted!"
    end
  end

  protected

  def user_params
    params.require(:user).permit(:email, :firstname, :lastname, :password, :password_confirmation, :super_user)
  end

end
