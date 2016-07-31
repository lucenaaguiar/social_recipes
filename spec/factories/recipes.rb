FactoryGirl.define do
  factory :recipe do
    name "Bolo de Cenoura"
    kitchen_type_id '1'
    food_type "Doce"
    amount_people 8
    preparation_time "60 minutos"
    preparation_level "Fácil"
    ingredients "Ovo, Leite, Farinha, Fermento, Cenoura, Chocolate"
    steps "Bata alguns ingredientes, depois junte com outros e coloque no forno durante 40 minutos"
  end
end
