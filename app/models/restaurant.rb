# == Schema Information
#
# Table name: restaurants
#
#  id          :integer          not null, primary key
#  cuisine     :string
#  description :string
#  name        :string
#  review      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Restaurant < ApplicationRecord
end
