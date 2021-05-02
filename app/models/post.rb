class Post < ApplicationRecord
  include Navigable

  has_many :comments
end
