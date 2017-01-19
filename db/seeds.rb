Product.delete_all
Department.delete_all

prod1 = Product.create(name: "Whole wheat bread", description: "The finest whole wheat bread in the west", reference_number: 87102387, availability: true, price: 1.09)
prod2 = Product.create(name: "Baguette", description: "The finest baguette in the west", reference_number: 87102374, availability: false, price: 1.30)
prod3 = Product.create(name: "Set of 3 toothbrushes", description: "Shine, shine, shine", reference_number: 54098723, availability: true, price: 2.09, video_url: "https://www.youtube.com/watch?v=YZbRpFOiOLs")

dep1 = Department.create(name: "Bread and Bakery", description: "We sell bread and other baked goods here.", image_url: "http://placehold.it/400x500")
dep2 = Department.create(name: "Other", description: "Everyting else you can buy here.", image_url: "http://placehold.it/400x500")

dep1.products << [prod1, prod2]
dep1.save
dep2.products << [prod3]
dep2.save
