module ApplicationHelper
    def users_signed_in?
        status = false
        unless session[:uid].nil?
            status = true
        end
        return status
    end
end
