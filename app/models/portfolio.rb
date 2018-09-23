class Portfolio < ApplicationRecord
  extend FriendlyId
  friendly_id :subtitle, use: :slugged
  validates_presence_of :title , :body
end
