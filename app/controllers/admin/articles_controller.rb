class Admin::ArticlesController < Admin::AdminController

  before_action :set_article, only: [:edit, :update, :destroy]

  def index
    @articles = Article.all.order(created_at: :desc)
  end

  def new
    @article = Article.new
    @article.release_date = Time.now
  end

  def create
    @article = Article.new(article_params)
    @article.user_id = global_user.id
    # @article.release_date = Time.now

    if @article.save
      redirect_to admin_articles_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @article.update(article_params)

    if @article.save
      redirect_to admin_articles_path
    else
      render :edit
    end
  end

  def destroy
    if @article.destroy
      setSuccessAlert I18n.t(:article_deleted_successfully)
    end

    redirect_to admin_articles_path
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :content, :release_date, :tags)
  end

end
