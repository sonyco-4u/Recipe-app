class FoodsController < ApplicationController
  before_action :set_food, only: %i[show edit update destroy]
  # GET /foods or /foods.json
  def index
    @user = User.includes(:foods).find(current_user.id)
    @foods = @user.foods
  end

  # GET /foods/new
  def new
    @user = User.includes(:foods).find(current_user.id)
    @food = @user.foods.new
    render :new, locals: { food: @food }
  end

  # POST /foods or /foods.json
  def create
    add_food = current_user.foods.new(food_params)
    if add_food.save
      redirect_to '/foods', notice: 'Food was successfully added.'
    else
      render :new, alert: 'Failed to add food'
    end
  end

  # DELETE /foods/1 or /foods/1.json
  def destroy
    @food = set_food
    @food.delete
    respond_to do |format|
      format.html { redirect_to foods_url, notice: 'Food was successfully deleted.' }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_food
    @food = Food.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def food_params
    params.require(:food).permit(:name, :measurement_unit, :price)
  end
end
