class Slide < ActiveRecord::Base
  has_attached_file :image
  acts_as_list
  scope :published, where(:published => true)
  scope :ordered, order("#{Slide.table_name}.position ASC")
end
