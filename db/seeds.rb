# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

products = Product.create([
  { asin: "B0013BKDO8", name: 'AcuRite 00613 Indoor Thermometer & Hygrometer with Humidity Gauge, 3" H x 2.5" W x 1.3" D', category: "Tools & Home Improvement", rank: 92, dimensions: "1.3 x 2.5 x 3 inches" },
  { asin: "B07L6VQDSC", name: "Crayola Jumbo Crayons, Assorted Colors, Great Toddler Crayons, 16Count", category: "Toys & Games", rank: 30, dimensions: "1.3 x 2.5 x 3 inches" },
  { asin: "B002QYW8LW", name: "Baby Banana Infant Training Toothbrush and Teether", category: "Baby", rank: 36, dimensions: "1.3 x 2.5 x 3 inches" }
])