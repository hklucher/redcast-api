class Episode < ApplicationRecord
  belongs_to :podcast, counter_cache: :episodes_count
end