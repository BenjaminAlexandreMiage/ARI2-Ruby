class AdsController < ApplicationController

    def index
        @ads = Ad.all
    end

    def show
        @ad = Ad.find(params[:id])
    end

    def new
        @ad = Ad.new
    end

    def edit
        @ad = Ad.find(params[:id])
    end

    def create
        @ad = Ad.new(ad_params)
        if @ad.save
          redirect_to ads_path, notice: "Annonce créée avec succès."
        else
          render :new
        end
    end

    def update
        @ad = Ad.find(params[:id])
        if @ad.update(ad_params)
          redirect_to ads_path, notice: "Annonce mise à jour avec succès."
        else
          render :edit
        end
    end

    def destroy
        @ad = Ad.find(params[:id])
        @ad.destroy
        redirect_to ads_path, notice: "Annonce supprimée."
    end


    private
    
    def ad_params
        params.require(:ad).permit(:title, :description, :price, :creator_id, :image)
    end    

end
