class Prototype < ActiveRecord::Base

  belongs_to :user
  has_many :comments
  has_many :thumbnails

  accepts_nested_attributes_for :thumbnails

  acts_as_taggable
  acts_as_ordered_taggable_on :prototypes

end
