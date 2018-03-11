require 'rails_helper'

describe Post do
  describe '#valid?' do
    let(:post) { Post.new }

    it 'return false' do
      expect(post.valid?).to be_falsy
    end

    it 'must be only one error for each attribute' do
      expect(post.valid?).to be_falsy
      expect(post.errors[:title].count).to eq(1)
      expect(post.errors[:body].count).to eq(1)
    end
  end
end
