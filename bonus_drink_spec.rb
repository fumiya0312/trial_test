require_relative 'bonus_drink'

describe BonusDrink do
  specify { expect(BonusDrink.total_count_for(0)).to eq 0 }
  specify { expect(BonusDrink.total_count_for(1)).to eq 1 }
  specify { expect(BonusDrink.total_count_for(3)).to eq 4 }
  specify { expect(BonusDrink.total_count_for(7)).to eq 10 }
  specify { expect(BonusDrink.total_count_for(100)).to eq 149 }
end