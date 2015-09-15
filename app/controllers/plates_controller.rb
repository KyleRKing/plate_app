class PlatesController < ApplicationController


    def show
        @plate = Plate.find(params[:id])
    end


    def new
        @plate = Plate.new
    end


    def create
        @plate = Plate.new(params.require(:plate).permit(:plate_number, :plate_state, :user_id, ))

        if @plate.save
            redirect_to plates_path
        else
            render :new
        end
    end


    def edit
         @plate = Plate.find(params[:id])
    end


    def update
         @plate = Plate.find(params[:id])

        if @plate.update_attributes(params.require(:plate).permit(:plate_number, :plate_state, :user_id))
            redirect_to plates_path
        else
            render :edit
        end
    end


    def destroy
         @plate = Plate.find(params[:id])
         @plate.destroy
         redirect_to plates_path
    end

end