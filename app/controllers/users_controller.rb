class UsersController < ApplicationController
  before_action :set_user, only: %i[ show edit update destroy ]

  # GET /users or /users.json
  def index
    render json: User.all
  end

  # GET /users/1 or /users/1.json
  def show
    user = set_user
    if user
      render json: user
    else
      render json: {error: "User not found"}, status: :not_found
    end
  end

  # POST /users or /users.json
  def create
        user = User.create(user_params)
        if user.valid?
            render json: { "success": "User saved successfully!"}, status: :created
        else
            render json: {"errors": ["Validation errors"]}, status: :unprocessable_entity
        end
    end

  # PATCH/PUT /users/1 or /users/1.json
  def update
     user = set_user
  if user
    user.update(user_params)
    render json: user, status: :accepted
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

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.permit(:first_name, :last_name, :phone, :email, :password, :level, :image)
    end
end
