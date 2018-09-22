class Portfolio < ApplicationRecord
  extend FriendlyId
  friendly_id :subtitle, use: :slugged
end
