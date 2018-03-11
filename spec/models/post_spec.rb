require 'rails_helper'

describe Post do
  describe '#valid?' do
    let(:post) { Post.new }

    it 'return false' do
      expect(post.valid?).to be_falsy
    end
  end
end
