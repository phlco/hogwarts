class HousesController < ApplicationController
  before_filter :load_house, except: [:index]
  
  def index
    @houses = House.all
  end
  
  def show
  end
  
  private
    def load_house
      @house = House.find(params[:id])
    end
end