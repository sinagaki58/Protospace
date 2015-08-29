class Prototype < ActiveRecord::Base

  belongs_to :user

  acts_as_taggable_on :labels
  acts_as_taggable

  acts_as_ordered_taggable_on :prototypes

end
