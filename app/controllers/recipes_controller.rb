class RecipesController < ApplicationController
  before_action :find_recipe,only: [:show,:edit,:update,:destroy]
  before_action :authenticate_user!, except: [:index, :show]
  def index
    @recipe = Recipe.all.order("cooking_date DESC")
  end

  def new
  	@recipe = current_user.recipes.build
  	#this defines the new recipe function
  end

  def create
  	@recipe = current_user.recipes.build(recipe_params)

    if @recipe.save 
      redirect_to @recipe, notice: "You made a recipe!"
    else
      render 'new'
    end
  	#this deifines the create recipe function
  	#private method only defined in this file

  end

  def show 	
  end

  def edit	
  end

  def update
    if @recipe.update(recipe_params)
      redirect_to @recipe
    else
      render 'edit'
    end
  end

  def destroy
    @recipe.destroy
    redirect_to root_path, notice: "You deleted!"
  end
 

  private

  def find_recipe
  	@recipe=Recipe.find(params[:id])
  end
  		
  def recipe_params
  	params.require(:recipe).permit(:title,:description,:cooking_date, ingredients_attributes: [:id,:name,:amount,:_destroy],notes_attributes: [:id, :step, :_destroy])
  		#creates the attributes in the recipe 
  		#consider adding in date etc. here
  end

end
  	

  


