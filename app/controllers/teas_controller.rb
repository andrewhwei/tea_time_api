class TeasController < ApplicationController

  def index
    @teas = Tea.all
  end

  def show
    @tea = Tea.find_by(id: params[:id])
  end

  def create
    @tea = Tea.new(name: params[:name], origin: params[:origin], weight: params[:weight], in_stock: params[:in_stock])
    @tea.save
    render :show
  end

  def update
    @tea = Tea.find_by(id: params[:id])
    if params[:name]
      @tea.name = params[:name]
    elsif params[:origin]
      @tea.origin = params[:origin]
    elsif params[:weight]
      @tea.weight = params[:weight]
    elsif params[:in_stock]
      @tea.in_stock = params[:in_stock]
    end
    @tea.save
    render :show
  end

  def destroy
    @tea = Tea.find_by(id: params[:id])
    @tea.delete
  end

end
