class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
  # You need to implement the method below in your model (e.g. app/models/student.rb)
  @student = Student.from_omniauth(request.env["omniauth.auth"])

  if @student.persisted?
    sign_in_and_redirect @student, event: :authentication # this will throw if @student is not activated
    set_flash_message(:notice, :success, kind: "Facebook") if is_navigational_format?
  else
    session["devise.facebook_data"] = request.env["omniauth.auth"].except(:extra) # Removing extra as it can overflow some session stores
    redirect_to new_student_registration_url
  end
end

def failure
  redirect_to root_path
end
end
