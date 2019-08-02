# == Schema Information
#
# Table name: dishes
#
#  id          :integer          not null, primary key
#  description :string
#  dessert     :boolean
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Dish < ApplicationRecord
end
