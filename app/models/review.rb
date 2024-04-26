class Review < ApplicationRecord
  belongs_to :movie

  validates :comment, presence: true
  validates :stars, inclusion: { in: 1..5,
    message: "Avaliação deve estar entre 1 e 5 estrelas" }
end
