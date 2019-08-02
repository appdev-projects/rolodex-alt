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

require "rails_helper"

describe "Dish" do
  it "has an underlying table", points: 1 do
    dish_migrations_exists = false
    
    if ActiveRecord::Base.connection.table_exists? "dishes"
      dish_migrations_exists = true
    end
    expect(dish_migrations_exists).to be(true)
  end
end

describe "Dish" do
  it "is a table that exists", points: 2 do
    expect{ Dish }.to_not raise_error(NameError)
  end
end

describe "Dish" do
  it "inherits from ApplicationRecord", points: 1 do
    expect(Dish).to be < ApplicationRecord
  end
end

describe "Dish" do
  it "has an attribute called name", points: 1 do
    new_dish = Dish.new
    expect(new_dish.attributes).to include("name")
  end
end
