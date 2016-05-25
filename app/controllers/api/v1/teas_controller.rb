class Api::V1::TeasController < ApplicationController
  
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
    @tea.name = params[:name]
    @tea.origin = params[:origin]
    @tea.weight = params[:weight]
    @tea.in_stock = params[:in_stock]
    @tea.save
    render :show
  end

  def destroy
    @tea = Tea.find_by(id: params[:id])
    @tea.delete
    render json: "Employee Deleted"
  end
end
