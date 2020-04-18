class Api::V1::ScoresController < ApplicationController

    # GET / scores
    def index
        scores = Score.all
        render json: scores.to_json(:except => [:created_at, :updated_at])
    end

    def show
        score = Score.find(params[:id])
        render json: score.to_json(only: [:points, :max_distance, :user_number, :username])
    end

    def create
        score = Score.create(score_params)
        if score.save
            render json: score
        else
            render error: {error: 'Unable to create score'}, status: 400
        end
    end

    private

    def score_params
        params.require(:score).permit(:points, :max_distance, :user_number, :username)
    end

end
