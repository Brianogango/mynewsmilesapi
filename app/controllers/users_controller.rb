class UsersController < ApplicationController
  skip_before_action :authorized, only: [:create, :update, :index, :show, :destroy]

  # GET /users or /users.json
  def index
    render json: User.all
  end

  # GET /users/1 or /users/1.json
  def show
  token = request.headers['Authorization'].split(' ')[1] # extract JWT token from header
  decoded_token = decode_token(token)

  if decoded_token && decoded_token['user_id'] == params[:id].to_i
    @user = User.find(params[:id])
    render json: @user
  else
    render json: { error: 'Unauthorized' }, status: :unauthorized
  end
end

  # POST /users or /users.json
  def create
        user = User.create(user_params)
        if user.valid?
            render json: { status: "success": "User saved successfully!"}
        else
            render json: {"errors": ["Validation errors"]}, status: :unprocessable_entity
        end
    end

  # PATCH/PUT /users/1 or /users/1.json
  def update
     user = set_user
  if user
    user.update(user_params)
    render json: {status:"success", user:user}
  else
    render json: {error:"Unable to update user"}, status: :unprocessable_entity
  end
  end

  # DELETE /users/1 or /users/1.json
  def destroy
     user = set_user
  if user.destroy
    render json: { message: "User and associated bookings deleted" }, status: :ok
  else
    render json: { error: "Unable to delete user" }, status: :unprocessable_entity
  end
  end

  def bookings
  Booking.where(user_id: self.id)
  end
  private

    def decode_token(token)
      begin
        JWT.decode(token, 'my_s3cr3t', true, algorithm: 'HS256')[0]
      rescue JWT::DecodeError
        nil
      end
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.permit(:first_name, :last_name, :phone, :email, :password, :level, :image)
    end
end
