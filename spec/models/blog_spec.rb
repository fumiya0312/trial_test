require 'rails_helper'


describe Blog, type: :model do
  before do
    # @blog = FactoryBot.build(:blog)#rails_helperに  config.include FactoryBot::Syntax::Methods記述することで省略可能
    @blog = build(:blog)
  end
  context "titleがある場合" do
    it "有効な状態であること" do
      expect(@blog.valid?).to be_truthy
    end
  end

  context "titleがない場合" do
    it "無効な状態であること" do
      @blog.title = nil
      expect(@blog.valid?).to be_falsey
    end
  end
end