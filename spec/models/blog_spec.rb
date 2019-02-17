require 'rails_helper'

describe Blog do
  it "1 + 1は2になること" do
    expect(1 + 1).to eq 2
  end
end

describe Blog do
  it "titleがあれば有効な状態であること" do
    blog = Blog.new(title: "ああふぁ")
    expect(blog.valid?).to be_truthy
  end

  it "titleがあれば無効な状態であること" do
    blog = Blog.new(title: nil)
    expect(blog.valid?).to be_falsey
  end
end