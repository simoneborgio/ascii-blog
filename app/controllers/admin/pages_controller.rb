class Admin::PagesController < Admin::AdminController

  before_action :set_page, only: [:edit, :update, :destroy]

  def index
    @pages = Page.sorted
  end

  def new
    @page = Page.new
    @page.order = Page.all.count + 1
  end

  def create
    @page = Page.new(page_params)

    if @page.save
      redirect_to admin_pages_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @page.update(page_params)

    if @page.save
      redirect_to admin_pages_path
    else
      render :edit
    end
  end

  def destroy
    if @page.destroy
      setSuccessAlert I18n.t(:page_deleted_successfully)
    end

    redirect_to admin_pages_path
  end

  private

  def set_page
    @page = Page.find(params[:id])
  end

  def page_params
    params.require(:page).permit(:name, :content, :order)
  end

end
