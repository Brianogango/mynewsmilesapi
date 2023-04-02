class MessagesController < ApplicationController
  skip_before_action :authorized, only: [:create,:index,:destroy]

  # GET /messages or /messages.json
  def index
    render json: Message.all
  end

  # POST /messages or /messages.json
  def create
    message = Message.create(message_params)
    if message.valid?
      render json:{status: :created, message: message}
    else
      render json: {errors:"Validatin errors"}, status: :unprocessable_entity
    end
  end


  # DELETE /messages/1 or /messages/1.json
  def destroy
    message = set_message
    message.destroy
    head :no_content
  end


  private

    # Use callbacks to share common setup or constraints between actions.
    def set_message
      message = Message.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def message_params
    params.permit(:name,:email,:message)
  end
end
