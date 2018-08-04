# == Schema Information
#
# Table name: categories
#
#  id                :integer          not null, primary key
#  parent_id         :integer
#  created_at        :datetime
#  updated_at        :datetime
#  attachement       :string
#  image_id          :string
#  visible           :boolean          default(FALSE)
#  name_translations :jsonb            not null
#

class Category < ActiveRecord::Base
  translates :name
  belongs_to :parent, :class_name => "Category"
  has_many :childs, :class_name => "Category", :foreign_key => "parent_id"
  attachment :image, content_type: ["image/jpeg", "image/png", "image/gif"]

  def lname?
    :name_en
  end
end
