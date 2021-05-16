class Project < ApplicationRecord
  belongs_to :site

  acts_as_taggable
  acts_as_taggable_on :custom
end
