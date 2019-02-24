require_relative 'triangle'

RSpec.describe "三角形を求める" do
  before do
    @checker = Triangle.new
  end

  it "正三角形を判別すること" do
    expect(@checker.check(1, 1, 1)).to eq '正三角形'
  end

  it "二等辺三角形であること" do
    expect(@checker.check(2, 2, 1)).to eq '二等辺三角形'
    expect(@checker.check(2, 1, 2)).to eq '二等辺三角形'
    expect(@checker.check(1, 2, 2)).to eq '二等辺三角形'
  end

  it "不等辺三角形であること" do
    expect(@checker.check(2, 3, 4)).to eq '不等辺三角形'
    expect(@checker.check(2, 4, 3)).to eq '不等辺三角形'
    expect(@checker.check(3, 2, 4)).to eq '不等辺三角形'
  end

  it "三角形じゃないです><" do
    expect(@checker.check(1, 2, 3)).to eq '三角形じゃないです><'
  end

  it "引数に0あり" do
    expect(@checker.check(0, 1, 1)).to eq '引数に0あり'
  end
end