class Spree::Slide < ActiveRecord::Base
  has_attached_file :image
  acts_as_list
  scope :published, where(:published => true)
  scope :ordered, order("#{Spree::Slide.table_name}.position ASC")
end
