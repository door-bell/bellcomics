class SessionsController < Clearance::SessionsController

  def create

    if verify_recaptcha(model: @user)
      @user = authenticate(params)
      sign_in(@user) do |status|
        if status.success?
          redirect_back_or url_after_create
        else
          flash.now.notice = status.failure_message
          render template: "sessions/new", status: :unauthorized
        end
      end
    else
      render template: "sessions/new", status: :unauthorized
    end

  end

end
