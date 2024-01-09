# Clean the database before seeding (optional)
Product.destroy_all

# Seed electronic products
Product.create!(
  name: 'Laptop',
  description: 'Powerful laptop for all your computing needs.',
  price: 899,
  quantity: 50,
  category: 'Electronics',
  brand: 'TechMaster'
)

Product.create!(
  name: 'Smartphone',
  description: 'The latest smartphone with advanced features.',
  price: 599,
  quantity: 100,
  category: 'Electronics',
  brand: 'TechGuru'
)

Product.create!(
  name: 'Headphones',
  description: 'Premium headphones with noise-canceling technology.',
  price: 149,
  quantity: 75,
  category: 'Electronics',
  brand: 'AudioTech'
)

Product.create!(
  name: 'Tablet',
  description: 'Sleek and lightweight tablet for productivity and entertainment.',
  price: 349,
  quantity: 40,
  category: 'Electronics',
  brand: 'TechVision'
)

Product.create!(
  name: 'Smartwatch',
  description: 'Stay connected with this stylish and feature-packed smartwatch.',
  price: 199,
  quantity: 60,
  category: 'Electronics',
  brand: 'WearTech'
)

Product.create!(
  name: 'Gaming Console',
  description: 'Immerse yourself in gaming with this high-performance console.',
  price: 499,
  quantity: 30,
  category: 'Electronics',
  brand: 'GameMaster'
)

# Add more electronic products as needed
