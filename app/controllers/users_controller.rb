class UsersController < Clearance::UsersController

  def create
    @user = user_from_params

    if verify_recaptcha(model: @user) && @user.save
      sign_in @user
      redirect_back_or url_after_create
    else
      render template: "users/new"
    end


  end

end
