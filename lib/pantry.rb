class Pantry

  attr_reader :stock

  def initialize
    @stock = Hash.new(0)
  end

  def stock_check(ingredient)
    @stock[ingredient]
  end

  def restock(ingredient, quantity)
    @stock[ingredient] += quantity
  end

  def enough_ingredients_for?(recipe)
    total_ingredients = 0
    @stock.each do |ingredients, quantity|
      total_ingredients << quantity
      if total_ingredients > 22
        true
      end
    end
    total_ingredients < 0
    return false
  end
end
