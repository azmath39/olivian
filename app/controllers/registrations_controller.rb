class RegistrationsController < Devise::RegistrationsController
  # def create
    #render :text => params.inspect and return
   # p "aaaaaaaaaaaaaaaa"
    #  puts verify_recaptcha
     # p"bbbbbbbbbbbbbbbbb"
    #  puts params[:role]
    #   if verify_recaptcha
    #     super
    #   else
    #     build_resource
    #     clean_up_passwords(resource)
    #     #flash[:alert] = "There was an error with the recaptcha code below. Please re-enter the code and click submit."
    #     render :template => '/devise/registrations/new'  
    #   end
    # end



# def new
#       @user =User.new
#     #  respond_to do |format|
#     #   format.html # index.html.erb
#     #   format.json { render json: @user }
#      end
 def create
   @user = User.create( user_params )
 end

private

# Use strong_parameters for attribute whitelisting
# Be sure to update your create() and update() controller methods.

def user_params
  params.require(:user).permit(:name, :gender, :avatar)
end
    
end


