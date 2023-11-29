# == Schema Information
#
# Table name: ideas
#
#  id          :integer          not null, primary key
#  description :string
#  idea_image  :string
#  idea_name   :string
#  likes_count :integer
#  post_status :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Idea < ApplicationRecord
end
