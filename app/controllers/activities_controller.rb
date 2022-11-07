class ActivitiesController < ApplicationController

    rescue_from ActiveRecord::RecordNotFound, with: :not_found

    def index
        activities = Activity.all
        render json: activities
    end

    def destory
        activity = activity.find(params[:id])
        activity.destroy
        head :no_content
    end

    private 

    def not_found
        render json: {error: 'Camper not found'}, status: :not_found
    end
end
