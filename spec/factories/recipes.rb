FactoryGirl.define do
  factory :recipe do
    name "MyString"
    kitchen_type "MyString"
    food_type "MyString"
    amout_people 1
    preparation_time "MyString"
    preparation_level "MyString"
    ingredients "MyText"
    steps "MyText"
  end
end
