require 'rails_helper'

RSpec.describe Post, type: :model do
  describe '#create' do
      before do
      @post = FactoryBot.build(:post)
      end


    it '必須項目が存在すれば登録できる' do
      expect(@post).to be_valid
    end
    it 'imageが空では登録できない' do
      @post.image = nil
      @post.valid?
      expect(@post.errors.full_messages).to include()
    end
    it 'titleが空では登録できない' do
      @post.title = nil
      @post.valid?
      expect(@post.errors.full_messages).to include()
    end
    
    it 'prefecture_idを選択しなと登録できない' do
      @post.prefecture_id = 0
      @post.valid?
      expect(@post.errors.full_messages).to include()
    end
    it 'budget_idを選択しないと登録できない' do
      @post.budget_id = 0
      @post.valid?
      expect(@post.errors.full_messages).to include()
    end
    it 'explainが空だと登録できない' do
      @post.explain = nil
      @post.valid?
      expect(@post.errors.full_messages).to include()
    end
    it 'placeが空だと登録できない' do
      @post.place = nil
      @post.valid?
      expect(@post.errors.full_messages).to include()
    end
    
    it 'transportation_idを選択しないと登録できない' do
      @post.transportation_id = 0
      @post.valid?
      expect(@post.errors.full_messages).to include()
    end
 end
end
