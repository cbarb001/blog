class Post
  include Mongoid::Document
  belongs_to :user
  field :title, type: String
  field :content, type: String
  field :userId, type: String
end
