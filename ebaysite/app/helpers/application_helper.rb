module ApplicationHelper
  def show_user_name(id)
    User.where(id: id)[0].name
  end

  def logged_in?
       !current_user.nil?
  end

   # Confirms a logged-in user.
  def logged_in_user
      unless logged_in?
         flash[:danger] = "You must be logged in."
         redirect_to new_user_session_path
      end
  end
end
