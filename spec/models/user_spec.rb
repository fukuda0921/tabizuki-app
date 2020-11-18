require 'rails_helper'

RSpec.describe User, type: :model do
describe '#create' do
  before do
    @user = FactoryBot.build(:user)
  end

  it '必須項目が存在すれば登録できる' do
    expect(@user).to be_valid
  end
  it 'nicknameが空では登録できない' do
    @user.nickname = nil
    @user.valid?
    expect(@user.errors.full_messages).to include()
  end
  it 'emailが空では登録できない' do
    @user.email = nil
    @user.valid?
    expect(@user.errors.full_messages).to include()
  end
  it '重複したemailが存在すると登録できない' do
    @user.save
    another_user = FactoryBot.build(:user)
    @user.email = another_user.email
    @user.valid?
    expect(@user.errors.full_messages).to include()
  end
  it 'passwordが空では登録できない' do
    @user.password = nil
    @user.valid?
    expect(@user.errors.full_messages).to include()
  end
  it 'passwordが５文字以下では登録できない' do
    @user.password = 'aaaa9'
    @user.valid?
    expect(@user.errors.full_messages).to include()
  end
  it 'passwordが半角英数字混合でないと登録できない' do
    @user.password = 'aaaaaa'
    @user.valid?
    expect(@user.errors.full_messages).to include()
  end
  it 'password_confirmationが空では登録できないこと' do
    @user.password_confirmation = nil
    @user.valid?
    expect(@user.errors.full_messages).to include()
  end
  it 'passwordとpassword_confirmationが不一致では登録できないこと' do
    @user.password = 'aaaaa7'
    @user.password_confirmation = 'aaaaa8'
    @user.valid?
    expect(@user.errors.full_messages).to include()
  end
end
end