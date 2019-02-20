module ApplicationHelper
	def check_access_authorization(user)
    unless is_current_user?(user)
      redirect_to root_path
      flash[:danger] = "Accès non-autorisé"
    end
  end

  def bootstrap_class_for_flash(type)
	  case type
	    when 'notice' then "alert-info"
	    when 'success' then "alert-success"
	    when 'error' then "alert-danger"
	    when 'alert' then "alert-warning"
	  end
	end

end
