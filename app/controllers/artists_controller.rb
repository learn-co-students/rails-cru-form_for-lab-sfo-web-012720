class ArtistsController < ApplicationController

    before_action :find_art, only: [:show, :edit, :update]

    def index
        @artists = Artist.all
    end

    def show        
    end

    def new
        @artist = Artist.new
    end

    def create
        @artist = Artist.create(artist_params)
        if @artist.valid?
            redirect_to artist_path(@artist)
        else
            render :new
        end
    end

    def edit
    end

    def update
        @artist.update(artist_params)
        redirect_to artist_path(@artist)
    end

    private

    def artist_params
        params.require(:artist).permit(:name, :bio)
    end

    def find_art
        @artist = Artist.find(params[:id])
    end
end