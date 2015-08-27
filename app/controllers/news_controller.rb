class NewsController < ApplicationController
	before_action :set_news_type, only: [:show, :edit, :update, :destroy]
	before_action :news_type

    def index 
      @news = news_type_class.all.reverse#.order("created_at DESC")
      if params[:search]
        @news = News.search(params[:search]).order("created_at DESC")
      else
        @news
      end
    end

    # Code hidden for brivety

    private

    def set_news_type
      @news_type = news_type 
    end

    def set_news_type
      @news_type = news_type_class.find(params[:id])
    end

    def news_type 
      News.news_type.include?(params[:type]) ? params[:type] : "News"
    end

    def news_type_class 
      news_type.constantize 
    end

end
