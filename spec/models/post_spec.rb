require 'rails_helper'

RSpec.describe Post, type: :model do

  before do
    @post = Post.new(title: "Lorem Ipsum", content: "Lorem ipsum dolor sit ametum.")
  end

  subject { @post }

  it { should respond_to(:title) }
  it { should respond_to(:content) }
  it { should be_valid }

  describe "with blank content" do
    before { @post.content = " " }
    it { should_not_be_valid}
  end

  describe "with blank title" do
    before { @post.title = " " }
    it { should_not_be_valid}
  end
end
