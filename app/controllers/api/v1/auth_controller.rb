class Api::V1::AuthController < ApplicationController

    def create # auth#login
        puts params
        @player = Player.find_by(username: params[:username])
        if @player && @player.authenticate(params[:password])
            token = encode_token({ player_id: @player.id })
            render json: { player: @player, token: token }
        else
            render json: { error: true, message: 'Invalid username or password' }
        end
    end

    def jwt_log_in
        token = decode_token(request.headers["Authentication"])
        player_id = token["player_id"]
        player = Player.find(player_id)
        render json: player
    end

    private

    def user_login_params
        params.require(:player).permit(:username, :password)
    end
end
