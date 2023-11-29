# == Schema Information
#
# Table name: materials
#
#  id            :integer          not null, primary key
#  description   :string
#  material_name :string
#  material_type :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class Material < ApplicationRecord
end
