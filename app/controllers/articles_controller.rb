class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  # GET /articles
  # GET /articles.json
  def index
    @article = Article.all
  end

  def show

  end  

  def set_article
    @article = Article.find(params[:id])
  end  
end
