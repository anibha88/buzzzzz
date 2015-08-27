class BeautyAndSexController < ApplicationController

  def index
    @beauty_and_sex = BeautyAndSex.all
    if params[:search]
        @beauty_and_sex = BeautyAndSex.search(params[:search]).order("created_at DESC")
      else
        @beauty_and_sex
    end
  end

   private

    def set_beauty_and_sex_type
      @beauty_and_sex_type = beauty_and_sex_type_class.find(params[:id])
    end

    def beauty_and_sex_type 
      BeautyAndSex.types.include?(params[:type]) ? params[:type] : "BeautyAndSex"
    end

    def beauty_and_sex_type_class 
      beauty_and_sex_type.constantize 
    end

end
