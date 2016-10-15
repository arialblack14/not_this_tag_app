require 'rails_helper'

RSpec.describe Post, type: :model do

  before do
    @post = Post.new(title: "Lorem Ipsum", content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam maximus massa sed magna rhoncus, vitae volutpat mauris bibendum. Praesent pharetra lorem vel dui suscipit tincidunt. Aenean ornare molestie neque id tempus. Vestibulum quis eros sem. Morbi lectus massa, porttitor nec lacus aliquam, luctus rutrum ligula. Quisque quis fermentum urna, vel faucibus neque. Suspendisse potenti. Sed molestie egestas tellus, vel pharetra diam mattis quis. Vestibulum urna erat, auctor sed arcu sit amet, aliquam facilisis odio. Suspendisse aliquet est enim, ornare ultricies ipsum mattis nec.")
  end

  subject { @post }

  it { should respond_to(:title) }
  it { should respond_to(:content) }
  it { should be_valid }
end
