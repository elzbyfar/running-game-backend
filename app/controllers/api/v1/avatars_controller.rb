class Api::V1::AvatarsController < ApplicationController

    def index
        avatars = Avatar.all
        render json: avatars.to_json(only: [:id, :name, :image])
    end

    def show
        avatar = Avatar.find(params[:id])
        render json: avatar.to_json(only: [:id, :name, :image])
    end

    def create
        avatar = Avatar.new(user_params)
        if avatar.save
            render json: avatar
        else
            render error: {error: 'Unable to create avatar'}, status: 400
        end
    end

end
