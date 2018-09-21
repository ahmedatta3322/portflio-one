class PortfoliosController < ApplicationController
  def params_def
    return params.require(:portfolio).permit(:title,:subtitle,:body)
  end
  def find_current
    @port_items = Portfolio.find(params[:id])
  end
  def index
    @port_items = Portfolio.all
    #code
  end
  def new
    @port_items = Portfolio.new
    #code
  end
  def edit
    @port_items = find_current
  end
  def update
    @port_items = find_current
    if @port_items.update(params_def)
      redirect_to portfolios_path
    end
    #code
  end
  def create
    @port_items = Portfolio.new(params_def)
    if @port_items.save
      redirect_to portfolios_path
    end


  end

end
