class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  # GET /articles
  # GET /articles.json
  def index
    @articles = Article.all
  end

  # GET /articles/1
  # GET /articles/1.json
  def show

  end

  # GET /article/new
  def new
    @article = Article.new
  end 

  # GET /articles/1/edit
  def edit
  end  


  # POST /articles
  def create
    @article = Article.new(post_params)
    @article.save
  end

  # PATCH/PUT /articles/1
  def update
    @article.update(post_params)  
  end 

  # DELETE /post/1
  def destroy
    @article.destroy
    redirect_to articles_path
  end  

  private

  def set_article
    @article = Article.find(params[:id])
  end  

  def post_params
      params.require(:article).permit(:title, :body, :author_id)
    end

end
