class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :content]

  def index
  end

  def list
    query = params[:q].to_s.strip

    if query.present?

      query = query.gsub(' ', '|')

      logger.debug "Searching for: #{query}"

      # TODO database-agnostic full text query
      if ActiveRecord::Base.connection.adapter_name == 'PostgreSQL'

        @articles = Article.published.advanced_search({title: query, tags: query}, false)
        # @articles = Article.published.basic_search({title: query, tags: query}, false)
        # @articles = Article.published.fuzzy_search({title: query, tags: query}, false)
      else

        @articles = Article.published.where('title LIKE ?', "%#{query}%").order(release_date: :desc)
      end

    else

      @articles = Article.published.order(release_date: :desc)
    end

    render layout: 'empty'
  end

  def show
    @article.reads += 1
    @article.save

    render layout: 'article'
  end

  def content
    @content = convert_adoc(@article.content)

    render layout: 'empty'
  end

  def feed
    @articles = Article.published

    respond_to do |format|
      format.rss { render :layout => false }
    end
  end

  private

  def set_article
    @article = Article.find_by(uri: params[:uri])
  end

  def article_params
    params.require(:article).permit(:title, :content)
  end

end
