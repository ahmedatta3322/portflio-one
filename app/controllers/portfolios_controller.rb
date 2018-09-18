class PortfoliosController < ApplicationController
  def index
    @port_items = Portfolio.all
    #code
  end
  def new
    @port_items = Portfolio.new
    #code
  end
  def create
    @port_items = Portfolio.new(params.require(:portfolio).permit(:title,:subtitle,:body))
    if @port_items.save
      redirect_to portfolios_path
    end

  end
end
