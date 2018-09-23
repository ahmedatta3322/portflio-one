class PortfoliosController < ApplicationController
  before_action :find_current , only: [:edit,:update,:show,:destroy]
  def params_def
    return params.require(:portfolio).permit(:title,:subtitle,:body)
  end
  def find_current
    @port_items = Portfolio.friendly.find(params[:id])
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
  end
  def update
    if @port_items.update(params_def)
      redirect_to portfolios_path
    end
    #code
  end
  def show

    #code
  end
  def destroy
    @port_items.destroy
    redirect_to portfolios_path
    #code
  end
  def create
    @port_items = Portfolio.new(params_def)
    if @port_items.save
      redirect_to portfolios_path
    else
      render :new
    end


  end

end
