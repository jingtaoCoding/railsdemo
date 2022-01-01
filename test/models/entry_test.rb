require "test_helper"

class EntryTest < ActiveSupport::TestCase
  test "is valid with valid attributes" do 
    entry = Entry.new(
      meal_type: "Breakfast", 
    calories: 200,
    protiens: 1200, 
    carbohydrates: 24,
    fats: 22)

    assert entry.save 
  end 


  test "should not save entry without calories" do 
    entry = Entry.new(meal_type: "Breakfast",  protiens: 1200, carbohydrates: 24, fats: 22)
    assert_not  entry.save 
  end 
end 
