class SongsController < ApplicationController

    before_action :find_art, only: [:show, :edit, :update]

    def index
        @songs = Song.all
    end

    def show        
    end

    def new
        @song = Song.new
    end

    def create
        @song = Song.create(song_params)
        if @song.valid?
            redirect_to song_path(@song)
        else
            render :new
        end
    end

    def edit
    end

    def update
        @song.update(song_params)
        redirect_to song_path(@song)
    end

    private

    def song_params
        params.require(:song).permit(:name)
    end

    def find_art
        @song = Song.find(params[:id])
    end
end