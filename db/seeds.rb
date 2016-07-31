type = KitchenType.create(name: 'Italiana')
type1 = KitchenType.create(name: 'Mineira')

Recipe.create(name: "Bolo de Cenoura",
              kitchen_type_id: type.id,
              food_type: "Doce",
              amount_people: 8,
              preparation_time: "60 minutos",
              preparation_level: "Fácil",
              ingredients: "Ovo, Leite, Farinha, Fermento, Cenoura, Chocolate",
              steps: "Bata alguns ingredientes, depois junte com outros e coloque no forno durante 40 minutos")

Recipe.create(name: "Bolo de Fubá",
              kitchen_type_id: type.id,
              food_type: "Doce",
              amount_people: 8,
              preparation_time: "60 minutos",
              preparation_level: "Fácil",
              ingredients: "Ovo, Leite, Farinha, Fermento, Fubá, Chocolate",
              steps: "Bata alguns ingredientes, depois junte com outros e coloque no forno durante 40 minutos")

Recipe.create(name: "Bolo de Laranja",
              kitchen_type_id: type1.id,
              food_type: "Doce",
              amount_people: 8,
              preparation_time: "60 minutos",
              preparation_level: "Fácil",
              ingredients: "Ovo, Leite, Farinha, Fermento, Laranja, Chocolate",
              steps: "Bata alguns ingredientes, depois junte com outros e coloque no forno durante 40 minutos")

Recipe.create(name: "Torta de Frango",
              kitchen_type_id: type1.id,
              food_type: "Doce",
              amount_people: 8,
              preparation_time: "60 minutos",
              preparation_level: "Fácil",
              ingredients: "Ovo, Leite, Farinha, Fermento, Laranja, Chocolate",
              steps: "Bata alguns ingredientes, depois junte com outros e coloque no forno durante 40 minutos")

Recipe.create(name: "Mousse de maracujá",
              kitchen_type_id: type1.id,
              food_type: "Doce",
              amount_people: 8,
              preparation_time: "60 minutos",
              preparation_level: "Fácil",
              ingredients: "Ovo, Leite, Farinha, Fermento, Laranja, Chocolate",
              steps: "Bata alguns ingredientes, depois junte com outros e coloque no forno durante 40 minutos")
