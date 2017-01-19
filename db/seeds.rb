#User.delete_all
#Department.delete_all
#Product.delete_all

# Departments
department1 = Department.create(name: "Bakery Department", description: "'t Tulpje bakery offering bespoke handmade cupcakes, layer cakes, loaves and slices, just like you would make at home.")
department2 = Department.create(name: "Meat Department", description: "'t Tulpje offering the finest cuts of beef, pork, poultry, and other meats prepared by our butchers")
department3 = Department.create(name: "Produce Department", description: "Visit our produce department with the freshest fruits and vegetables grown by local farmers")
department4 = Department.create(name: "Seafood Department", description: "Encompassing favorites such as lobster and shrimp, as well as a plethora of fish and shellfish options")
department5 = Department.create(name: "Pharmacy Department", description: "Very affordable prescriptions. Only at 't Tulpje'")

# Users
andreas = User.create(email: "andreas@ut-tulpje.com", password: "abcd1234")
kelly = User.create(email: "kelly@ut-tulpje.com", password: "defg1234")
melvin = User.create(email: "melvin@ut-tulpje.com", password: "hijk1234")
vincent = User.create(email: "vincent@ut-tulpje.com", password: "lmno1234")

# Products
product1 = Product.create(name: "Handmade cupcakes", description: "In all colors of the rainbow", price: 4.95, department: department1, image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLsCiIm5D121OQERqqrau8Uapcx7EK11GCsVHqF2sFs0hZlmhoX4QIJfw")
product2 = Product.create(name: "Loave", description: "Freshly baked everyday", price: 2.95, department: department1, image_url: "https://thumbs.dreamstime.com/t/loave-bread-sacking-28455656.jpg")
product3 = Product.create(name: "Layer cake", description: "Layer on top of layer", price: 14.95, department: department1, image_url: "https://s-media-cache-ak0.pinimg.com/736x/76/74/f3/7674f3fb1ea211afc81b11e6949028de.jpg")

product4 = Product.create(name: "Beef", description: "Best of the country", price: 4.90, department: department2, image_url: "http://a5.files.xojane.com/image/upload/c_fit,cs_srgb,dpr_1.0,q_80,w_620/MTI2MjA3MjYwNzMxOTEwNzg3.jpg")
product5 = Product.create(name: "Pork", description: "'t Tulpje's finest", price: 3.75, department: department2, image_url: "http://pad1.whstatic.com/images/thumb/5/53/Fry-a-Pork-Chop-Step-1-Version-3.jpg/aid17379-728px-Fry-a-Pork-Chop-Step-1-Version-3.jpg")
product6 = Product.create(name: "Poultry", description: "Best quality ever", price: 2.85, department: department2, image_url: "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTWOqOZRF8M9I3b-uLtLhfgky_TEwdpLnj54xk7EOEUHOKurjGn")

product7 = Product.create(name: "Paprika", description: "Never fresher", price: 0.99, department: department3, image_url: "http://www.thealthbenefitsof.com/wp-content/uploads/2015/08/Health-Benefits-of-Paprika.jpg")
product8 = Product.create(name: "Cucumber", description: "From Farmer Joe's", price: 0.75, department: department3, image_url: "http://www.planetorganic.com/images/products/large/1918.jpg")
product9 = Product.create(name: "Lettuce", description: "A must for every salad", price: 0.60, department: department3, image_url: "http://www.vegkitchen.com/wp-content/uploads/2011/07/Romaine-lettuce.jpg")

product10 = Product.create(name: "Lobster", description: "Treat yourself", price: 15.96, department: department4, image_url: "https://www.greateratlantic.fisheries.noaa.gov/sustainable/images/lobster300x205.jpg")
product11 = Product.create(name: "Shrimp", description: "Like no other", price: 3.45, department: department4, image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxEDEWDk4xMm0zI2T8iC4bp769eExhNOcfn39zIsvqna49KVSG")
product12 = Product.create(name: "Shellfish", description: "No rotten ones here", price: 6.75, department: department4, image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_TmD5GsvSQ2NcT6_9i38imyXn7-zLQEMm-fpjEcX_8bnDjfAU")

product13 = Product.create(name: "Shampoo", description: "Smooth hair every day", price: 5.75, department: department5, image_url: "http://cdn.hubble.pgsitecore.com/en-us/-/media/Aussie/Images/Products/Desktop/Detail/Aussie_newProducts_1290x1290_0039_Aussome%20Volume%20Shampoo%20400ml_0119.jpg?h=1290&la=en-US&w=1290&v=1-201601211737")
product14 = Product.create(name: "Conditioner", description: "Tangles be gone", price: 16.99, department: department5, image_url: "http://oud.girlscene.nl/images/library/articles/girlscene/archief/conditioner4.jpg")
product15 = Product.create(name: "Aspirines", description: "Beats all sorts of headaches", price: 4.95, department: department5, image_url: "http://www.org.uva.nl/e-klassenpreview/april/SCH-REKH/asperine_foto_1.JPG")
