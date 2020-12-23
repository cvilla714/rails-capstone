class ArticlesController < ApplicationController
  before_action :display_categories, only: %i[new edit create]
  before_action :authenticate_user!
  before_action :set_article, only: %i[show edit update destroy]

  # GET /articles
  # GET /articles.json
  def index
    @articles = Article.all
    @most_likes = Article.all.most_likes
  end

  # GET /articles/1
  # GET /articles/1.json
  def show; end

  # GET /articles/new
  def new
    @article = Article.new
  end

  # GET /articles/1/edit
  def edit; end

  # POST /articles
  # POST /articles.json
  def create
    @article = Article.new
    @article.author_id = current_user.id
    @article.title = article_params[:title]
    @article.body = article_params[:body]
    @article.image = article_params[:image]
    respond_to do |format|
      if @article.save
        add_categories
        format.html { redirect_to @article, notice: 'Article was successfully created.' }
        format.json { render :show, status: :created, location: @article }
      else
        format.html { render :new }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /articles/1
  # PATCH/PUT /articles/1.json
  def update
    @article.author_id = current_user.id
    @article.title = article_params[:title]
    @article.body = article_params[:body]
    @article.image = article_params[:image]
    respond_to do |format|
      if @article.save
        @article.categories.delete_all
        add_categories
        format.html { redirect_to @article, notice: 'Article was successfully updated.' }
        format.json { render :show, status: :ok, location: @article }
      else
        format.html { render :edit }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articles/1
  # DELETE /articles/1.json
  def destroy
    @article.destroy
    respond_to do |format|
      format.html { redirect_to articles_url, notice: 'Article was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_article
    @article = Article.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def article_params
    params.require(:article).permit(:title, :body, :image, :categories, categories: [])
  end

  def display_categories
    @categories = Category.all.order(:name)
  end

  def add_categories
    error = []
    categories = article_params['categories'][1..]
    categories.each do |category|
      @article_category = ArticleCategory.create(category_id: category, article_id: @article.id)
      error << @article_category.validate! unless @article_category.validate
    end
    redirect_to articles_path, notice: error if error.any?
  end
end