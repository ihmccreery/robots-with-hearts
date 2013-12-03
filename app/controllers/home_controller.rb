class HomeController < ApplicationController
  def index
    @pages = Page.page_files
  end
end
