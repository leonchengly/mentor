class Task < ApplicationRecord
  has_many :lists, dependent: :destroy
end
