module ApplicationHelper
  def show_user_name(id)
    User.where(id: id)[0].name
  end
end
