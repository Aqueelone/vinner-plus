# == Schema Information
#
# Table name: images
#
#  id                       :integer          not null, primary key
#  description_translations :jsonb            not null
#  attachement              :string
#  file_id                  :string
#  gallery_id               :integer
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#  category_id              :integer
#

class Image < ActiveRecord::Base
  translates :title, :description
  attachment :file, content_type: ["image/jpeg", "image/png", "image/gif"]
  belongs_to :gallery
  accepts_nested_attributes_for :gallery
  belongs_to :category
end
