class User < ApplicationRecord
  belongs_to :site

  acts_as_taggable
end
