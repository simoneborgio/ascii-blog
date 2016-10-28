class PagesController < ApplicationController
  before_action :set_page, only: [:show]

  def show
    @content = convert_adoc(@page.content, false)
  end

  private

  def set_page
    @page = Page.find_by(uri: params[:id]) if params[:id]
    @page = Page.find_by(uri: params[:uri]) if params[:uri]
  end

end
