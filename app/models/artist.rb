class Artist < ApplicationRecord
  has_many :songs, dependent: :delete_all
end
