#Photo.delete_all
#Product.delete_all
#Profile.delete_all
#Department.delete_all
#User.delete_all

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
product1 = Product.create(name: "Handmade cupcakes", description: "In all colors of the rainbow", price: 4.95, department: department1, remote_image_url_url: "http://res.cloudinary.com/dexiozdcc/image/upload/v1484856040/georgetown-cupcakes-fb_ps9bsu.jpg")
product2 = Product.create(name: "Loave", description: "Freshly baked everyday", price: 2.95, department: department1, remote_image_url_url: "http://res.cloudinary.com/dexiozdcc/image/upload/v1484855959/malted-wholemeal-loaf-023_nralrj.jpg")
product3 = Product.create(name: "Layer cake", description: "Layer on top of layer", price: 14.95, department: department1, remote_image_url_url: "http://res.cloudinary.com/dexiozdcc/image/upload/v1484856011/SugaryWinzy-Basket-Weave-Frosting-on-Banana-Chocolate-Chip-Layer-Cake17_ikexba.jpg")

product4 = Product.create(name: "Beef", description: "Best of the country", price: 4.90, department: department2, remote_image_url_url: "http://res.cloudinary.com/dexiozdcc/image/upload/v1484856088/cutout-beef_ilju8l.jpg")
product5 = Product.create(name: "Pork", description: "'t Tulpje's finest", price: 3.75, department: department2, remote_image_url_url: "http://res.cloudinary.com/dexiozdcc/image/upload/v1484856111/pork1_qobc8k.gif")
product6 = Product.create(name: "Poultry", description: "Best quality ever", price: 2.85, department: department2, remote_image_url_url: "http://res.cloudinary.com/dexiozdcc/image/upload/v1484856148/Chicken_dmikyg.jpg")

product7 = Product.create(name: "Paprika", description: "Never fresher", price: 0.99, department: department3, remote_image_url_url: "http://res.cloudinary.com/dexiozdcc/image/upload/v1484856176/1154_detail_rfnwgc.jpg")
product8 = Product.create(name: "Cucumber", description: "From Farmer Joe's", price: 0.75, department: department3, remote_image_url_url: "http://res.cloudinary.com/dexiozdcc/image/upload/v1484856200/1918_lvqfmi.jpg")
product9 = Product.create(name: "Lettuce", description: "A must for every salad", price: 0.60, department: department3, remote_image_url_url: "http://res.cloudinary.com/dexiozdcc/image/upload/v1484856217/1403060163593064484_apqfkt.jpg")

product10 = Product.create(name: "Lobster", description: "Treat yourself", price: 15.96, department: department4, remote_image_url_url: "http://res.cloudinary.com/dexiozdcc/image/upload/v1484856260/s919333956212596705_p51_i3_w2197_pqlizz.jpg")
product11 = Product.create(name: "Shrimp", description: "Like no other", price: 3.45, department: department4, remote_image_url_url: "http://res.cloudinary.com/dexiozdcc/image/upload/v1484856294/fresh_shrimp_pwzxd9.jpg")
product12 = Product.create(name: "Shellfish", description: "No rotten ones here", price: 6.75, department: department4, remote_image_url_url: "http://res.cloudinary.com/dexiozdcc/image/upload/v1484856331/muscles_ecedya.jpg")

product13 = Product.create(name: "Shampoo", description: "Smooth hair every day", price: 5.75, department: department5, remote_image_url_url: "http://res.cloudinary.com/dexiozdcc/image/upload/v1484856370/Beta_Shampoo120ml_Prod_neynf6.jpg")
product14 = Product.create(name: "Conditioner", description: "Tangles be gone", price: 16.99, department: department5, remote_image_url_url: "http://res.cloudinary.com/dexiozdcc/image/upload/v1484856391/argan-oil-morocco-conditioner_opxupo.jpg")
product15 = Product.create(name: "Aspirines", description: "Beats all sorts of headaches", price: 4.95, department: department5, remote_image_url_url: "https://res.cloudinary.com/dexiozdcc/image/upload/v1484856409/aspirine_500_sfbbfv.jpg")
