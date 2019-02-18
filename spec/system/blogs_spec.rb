require 'rails_helper'


RSpec.describe "Blog管理", type: :system do
  scenario "Blogの作成時にtitleを入力しなかった場合にエラーが表示されること" do
    visit blogs_path
    click_link "New Blog"
    fill_in 'blog[title]', with: nil
    expect{
      click_button 'Save'
      sleep 1
    }.to change(Blog, :count).by(0)
    expect(current_path).to eq blogs_path
  end
 
  scenario "Blogの作成時にtitleを入力した場合はデータが保存され閲覧画面に遷移すること"do
    visit blogs_path
    click_link "New Blog"
    fill_in 'blog[title]', with: "ikkyu"
    expect{
      click_button 'Save'
    }.to change(Blog, :count).by(1)
    expect(current_path).to eq blogs_path
    expect(page).to have_content 'ikkyu'
  end
end
