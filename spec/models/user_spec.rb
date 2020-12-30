require 'rails_helper'
RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe "ユーザー新規登録" do
    context "ユーザー登録できる時" do
      it "nameとemail、passwordとpassword_confirmationが存在すれば登録できる" do
      end
      it 'passwordとpassword_confirmationが6文字以上であれば登録できる' do
      end
    end
  end

    context "ユーザー登録できない時" do
      it "nameが空だと登録できない" do
        @user.name = ""
        @user.valid?
        expect(@user.errors.full_messages).to include "Name can't be blank"
      end
      it "emailが空だと登録できない" do
        @user.email = ""
        @user.valid?
        expect(@user.errors.full_messages).to include "Email can't be blank"
      end
      it "すでに登録済みのemailは登録できない" do
      end
      it "emailに@がないと登録できない" do
    
      end
      it "passwordが空だと登録できない" do
        @user.password = ""
        @user.valid?
        expect(@user.errors.full_messages).to include "Password can't be blank"
      end
      it "passwordとpassword_confirmationが一致しないと登録できない" do
        @user.password_confirmation = ""
        @user.valid?
        expect(@user.errors.full_messages).to include "Password confirmation doesn't match Password"
      end
      it "passwordは5文字以下では登録できない" do
        @user.password = "00000"
        @user.valid?
        expect(@user.errors.full_messages).to include "Password is too short (minimum is 6 characters)"
      end
    end
end
