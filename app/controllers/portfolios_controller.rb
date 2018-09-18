class PortfoliosController < ApplicationController
  def index
    @port_items = Portfolio.all
    #code
  end
end
