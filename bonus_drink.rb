class BonusDrink
  def self.total_count_for(amount)
    drink = amount - 1
    if drink >= 1
      bonusDrink = drink / 2
      amount + bonusDrink
    else
      amount
    end
  end
end
