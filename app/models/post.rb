class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, presence: true

  acts_as_taggable
end
