class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user, optional: true # Permitir comentarios anónimos
end
