namespace :dev do
  desc "Hydrate the database with some dummy data to look at so that developing is easier"
  task :prime do
      require "faker"
      
      if ActiveRecord::Base.connection.table_exists? "restaurants"
        restaurant_records = []
        puts "Deleting all Restaurant records..."
        Restaurant.delete_all
        25.times.do
          new_record = {:name => Faker::Restaurant.name, :description => Faker::Restaurant.description, :cuisine => Faker::Restaurant.type, :review => Faker::Restaurant.review }
          restaurant_records.push(new_record)
        end
        
        Restaurant.import(restaurant_records, {validate: false})
        puts "Created #{Restaurant.count} Restaurant records!"
        
      else
        puts "You need to create a Restaurant table and model first! Have you run rails db:migrate?"
      end
      
      if ActiveRecord::Base.connection.table_exists? "dishes"
        dish_records = []
        puts "Deleting all Dish records..."
        Dish.delete_all
        25.times.do
          new_record = {:name => Faker::Food.dish, :description => Faker::Food.description, :dessert => false }
          dish_records.push(new_record)
        end
        
        25.times.do
          new_record = {:name => Faker::Dessert.variety, :description => Faker::Desset.flavor, :dessert => true }
          dish_records.push(new_record)
        end
        
        Dish.import(dish_records, {validate: false})
        puts "Created #{Dish.count} Dish records!"
      else
        puts "You need to create a Dish table and model first! Have you run rails db:migrate?"
      end
  end
end
