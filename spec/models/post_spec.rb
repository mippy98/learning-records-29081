require 'rails_helper'

RSpec.describe Post, type: :model do
  before do
    @post = FactoryBot.build(:post)
    @post.image = fixture_file_upload('app/assets/images/computer_laptop_angle5.png')
  end

  describe '投稿機能' do

    context "投稿できる場合" do
      it "タイトル、結論、内容、画像、カテゴリー、学習時間があれば投稿できる" do
        expect(@post).to be_valid
      end

      it "コメントがなくても保存できる" do
        @post.comment_id = ""
        expect(@post).to be_valid
      end
    end

    context '投稿できない場合' do
      it "タイトルがないと投稿できない" do
        @post.title = ""
        @post.valid?
        expect(@post.errors.full_messages).to include("Title can't be blank")
      end

      it "結論がないと投稿できない" do
        @post.conclusion = ""
        @post.valid?
        expect(@post.errors.full_messages).to include("Conclusion can't be blank")
      end

      it "内容がないと投稿できない" do
        @post.content = ""
        @post.valid?
        expect(@post.errors.full_messages).to include("Content can't be blank")
      end

      it "画像がないと投稿できない" do
        @post.image = nil
        @post.valid?
        expect(@post.errors.full_messages).to include("Image can't be blank")
      end

      it "カテゴリーがないと投稿できない" do
        @post.category_id = ""
        @post.valid?
        expect(@post.errors.full_messages).to include("Category can't be blank")
      end

      it "カテゴリーが選択されていないと投稿できない" do
        @post.category_id = 1
        @post.valid?
        expect(@post.errors.full_messages).to include("Category を選択してください")
      end

      it "学習時間がないと投稿できない" do
        @post.study_time_id = ""
        @post.valid?
        expect(@post.errors.full_messages).to include("Study time can't be blank")
      end

      it "学習時間が選択されていないと投稿できない" do
        @post.study_time_id = 1
        @post.valid?
        expect(@post.errors.full_messages).to include("Study time を選択してください")
      end

      it "ユーザーが紐づいていないと投稿できない" do
        @post.user = nil
        @post.valid?
        expect(@post.errors.full_messages).to include("User must exist")
      end
    end
  end
end

