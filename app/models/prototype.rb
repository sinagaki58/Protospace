class Prototype < ActiveRecord::Base

  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :thumbnails, dependent: :destroy

  accepts_nested_attributes_for :thumbnails

  acts_as_taggable
  acts_as_ordered_taggable_on :prototypes

  paginates_per 8
end
