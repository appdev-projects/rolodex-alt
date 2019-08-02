require "rails_helper"

describe "Restaurant" do
  it "has an underlying table", points: 1 do
    restaurant_migration_exists = false
    
    if ActiveRecord::Base.connection.table_exists? "restaurants"
      restaurant_migration_exists = true
    end
    expect(restaurant_migration_exists).to be(true)
  end
end

describe "Restaurant" do
  it "is a table that exists", points: 2 do
    expect { Restaurant }.to_not raise_error(NameError)
  end
end

describe "Restaurant" do
  it "inherits from ApplicationRecord", points: 1 do
    expect(Restaurant).to be < ApplicationRecord
  end
end

describe "Restaurant" do
  it "has an attribute called first_name", points: 1 do
    new_restaurant = Restaurant.new
    expect(new_restaurant.attributes).to include("first_name")
  end
end
