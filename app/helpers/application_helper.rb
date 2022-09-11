module ApplicationHelper
     :all
     :remaining_days


     # find the remaining trial days for this user
     def remaining_days
      ((current_user.created_at + 30.days).to_date - Date.today)
     end

     def trial_expired?
      # find current_user who is login. If you are using devise simply current_user will works
      # now that you have remaining_days, check whether trial period is already completed
      if remaining_days <= 0
         redirect_to root_path
      end
     end
    include Pagy::Frontend
end
