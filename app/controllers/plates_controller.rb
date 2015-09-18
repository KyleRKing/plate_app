class PlatesController < ApplicationController

    def index
        @plates = Plate.all
    end

    def show
        #Find the plate
        @plate = Plate.find( params[:id] )
        if( @plate == nil )
            @plate = Plate.where({ plate_state: params[:plate][:plate_state], plate_number: params[:plate][:plate_number] }).first
        end
        #  # If plate does not exists, set @plate to a new plate (create)
        if @plate == nil
            @plate = Plate.create({plate_state: params[:plate][:plate_state], plate_number: params[:plate][:plate_number] })
        end
    end


    def new
        @plate = Plate.new
    end


    def create
        @plate = Plate.new(plate_params)

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

        if @plate.update_attributes(plate_params)
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

    private
    def plate_params
        params.require(:plate).permit(:plate_number, :plate_state, :user_id)
    end

end