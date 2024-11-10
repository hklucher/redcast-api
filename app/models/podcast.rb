class Podcast < ApplicationRecord
  has_many :episodes, dependent: :destroy

  accepts_nested_attributes_for :episodes
end