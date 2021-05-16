class Site < ApplicationRecord
  has_many :projects

  acts_as_taggable
end
