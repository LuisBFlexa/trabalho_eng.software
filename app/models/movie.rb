class Movie < ApplicationRecord
    has_many :reviews, dependent: :destroy
  
    validates :title, presence: true
    validates :rating, inclusion: { in: %w(G PG PG-13 R NC-17),
      message: "%{value} não é uma classificação válida" }
    validates :release_date, presence: true
  end
  