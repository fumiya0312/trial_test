
FactoryBot.define do
  factory :blog do
    title {"TEST_TITLE"}
    # sequence(:title) {|n| "title_#{n}"}連番でデータ作成する
  end
end