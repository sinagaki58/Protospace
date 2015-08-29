class Prototype < ActiveRecord::Base

  belongs_to :user

  acts_as_taggable
  acts_as_ordered_taggable_on :prototypes

  attr_accessor :tag1, :tag2, :tag3
end
