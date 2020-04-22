class CookBook

  attr_reader :recipes

  def initialize
    @recipes = []
  end

  def add_recipe(recipe)
    @recipes << recipe
  end

  def ingredients
    ingredient_list = []
    @recipes.each do |recipe|
      recipe.ingredients.select do |ingredient|
        ingredient_list << ingredient.name
      end
    end
    ingredient_list.uniq
  end

  def highest_calorie_meal
    high_cal_meal = []
    @recipes.each do |recipe|
      if recipe.total_calories > 500
        high_cal_meal << recipe
      end
    end
    high_cal_meal.compact
  end
end
