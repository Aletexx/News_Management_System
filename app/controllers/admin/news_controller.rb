# app/controllers/admin/news_controller.rb
class Admin::NewsController < ApplicationController
  # Actions for the admin to manage news articles
  before_action :set_news, only: [:show, :edit, :update, :destroy, :hide_unhide]
  def index
    @news = News.order(created_at: :desc)
  end

  def show
    @news = News.find(params[:id])
  end

  def new
    @news = News.new
    @categories = Category.all
  end

  def create
    @news = News.new(news_params)
    if @news.save
      redirect_to admin_news_path(@news)
    else
      @categories = Category.all
      render :new
    end
  end

  def edit
    # Find the news article to edit
    @news = News.find(params[:id])
    @categories = Category.all
  end

  def update
    @news = News.find(params[:id])
    if @news.update(news_params)
      redirect_to admin_news_path(@news)
    else
      render :edit
    end
  end

  def destroy
    @news = News.find(params[:id])
    @news.destroy
    redirect_to admin_news_index_path
  end
  def hide_unhide
    @news.update(hidden: params[:hide] == "true")
    redirect_to admin_news_index_path
  end

  private
  def news_params
    params.require(:news).permit(:title, :content, :category_id, :source)
  end

  def set_news
    @news = News.find(params[:id])
  end
end
