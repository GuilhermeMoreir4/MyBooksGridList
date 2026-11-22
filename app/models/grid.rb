class Grid < ApplicationRecord
  has_many :books, -> { order(:position) }, dependent: :restrict_with_error
end
