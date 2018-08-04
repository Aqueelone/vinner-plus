# == Schema Information
#
# Table name: galleries
#
#  id                       :integer          not null, primary key
#  name_translations        :jsonb            not null
#  description_translations :jsonb            not null
#  category_id              :integer
#  product_id               :integer
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#

class Gallery < ActiveRecord::Base
  translates :name
  translates :description
  has_many :images
  belongs_to :category
end
