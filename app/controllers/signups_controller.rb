class SignupsController < ApplicationController

rescue_from ActiveRecord::RecordInvalid, with :error_message

    def create
        signup = signup.create!(signup_params)
        render json: signup, status: :created
    end

    private 

    def signup_params
        params.permit(:name, :difficulty)
    end

    def error_message(invalid)
        render json: {erorrs. invalid.record.errors.full_messages}, status: :unprocessable_entity
    end
end
