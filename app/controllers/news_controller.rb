class NewsController < ApplicationController

  def home
    @news = News.all # search news table and store each row it finds in @news object.
    @news = News.order(created_at: :desc).limit(4) # Orders news by created_at in descending order and limit to 4 news
  end

  def show # The method displays only further details on a single book.
    @news = News.find(params[:id])
  end

  def new # The method lets Rails know that you will create a new object
    @news = News.new
    @categories = Category.all
  end

  def create # The method creates a record into the database
    @news = News.new(news_params)
    if @news.save
      redirect_to action: 'home'
    else
      @categories = Category.all
      render action: 'new'
    end
  end

  def edit # The method looks nearly identical to the show method but EDITABLE
    @news = News.find(params[:id])
    @categories = Category.all
  end

  def update # This method will be called after the edit method and update the changes into the database.
    @news = News.find(params[:id])
    if @news.update(news_params)
      redirect_to action: 'show', id: @news
    else
      @categories = Category.all
      render action: 'edit'
    end
  end


  def destroy # delete a record into the database
    News.find(params[:id]).destroy
    redirect_to action: 'home'
  end

  def news_params
    params.require(:news).permit(:title, :category_id, :source, :content)
  end

  def show_categories
    @categories = Category.includes(:news).order(created_at: :desc) # Preload news for categories
  end

  def search
    if params[:query].present?
      @news = News.where("content LIKE ?", "%#{params[:query]}%").order(created_at: :desc)
    else
      @news = News.order(created_at: :desc)
    end
    render :search # render the search view
  end


end
