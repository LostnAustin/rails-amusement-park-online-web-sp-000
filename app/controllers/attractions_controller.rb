class AttractionsController < ApplicationController

    def index
        @attractions = Attractions.all
    end

    def show
        @attraction = Attraction.find_by(id: params[:id])
    end

      def new
        @attraction = Attraction.new
      end
    
      def create
        
      end
    
      def edit 
      end
    
      def update
      end
    
      def delete
      end
end
