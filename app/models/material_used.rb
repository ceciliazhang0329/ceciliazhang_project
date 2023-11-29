# == Schema Information
#
# Table name: material_useds
#
#  id          :integer          not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  idea_id     :integer
#  material_id :integer
#
class MaterialUsed < ApplicationRecord
end
