class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy

  # Método para dar "Me gusta"
  def like
    increment!(:likes_count)
  end

  # Método para dar "No me gusta"
  def dislike
    increment!(:dislikes_count)
  end
end
