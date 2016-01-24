class ArticlesController < ApplicationController

  def get_article
   @article = Article.find(params[:article_id])
  end

  def index
   @articles = Article.all 
  end

  def show
  end

  def new
    @article = Article.new
  end

  def edit
  end

  def create
   @article = Article.new(article_params)
    if @article.save
     redirect_to article_path
    else
     render action: "new"
    end
  end

  def update
    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    @article.destroy
    redirect_to articles_path
  end

end