class Post
  include ActiveModel::Model
  include ActiveModel::Attributes
  include ActiveModel::FailfastValidation

  attribute :title
  attribute :body

  validates :title, presence: true, length: { minimum: 5, maximum: 100 }
  validates :body, presence: true, length: { minimum: 30 }
end
