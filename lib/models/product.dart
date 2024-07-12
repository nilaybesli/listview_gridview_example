class Product {
  final String name;
  final String description;
  final String imageUrl;
  final double price;

  Product({
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.price,
  });
}

final List<Product> products = [
  Product(
    name: 'Camera',
    description: 'Black and Silver Nikon Camera',
    imageUrl:
        'https://images.pexels.com/photos/3907507/pexels-photo-3907507.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    price: 29.99,
  ),
  Product(
    name: 'Perfume',
    description: 'Perfume',
    imageUrl:
        'https://images.pexels.com/photos/258244/pexels-photo-258244.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    price: 49.99,
  ),
  Product(
    name: 'Watch',
    description: 'Round Michael Kors Chronograph Watch',
    imageUrl:
        'https://images.pexels.com/photos/2783873/pexels-photo-2783873.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    price: 149.99,
  ),
  Product(
    name: 'Smartphone',
    description: 'Latest model smartphone with advanced features',
    imageUrl:
        'https://images.pexels.com/photos/6632995/pexels-photo-6632995.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    price: 699.99,
  ),
  Product(
    name: 'Backpack',
    description: 'Durable and spacious backpack',
    imageUrl:
        'https://images.pexels.com/photos/2905238/pexels-photo-2905238.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    price: 49.99,
  ),
  Product(
    name: 'Sunglasses',
    description: 'Stylish sunglasses with UV protection',
    imageUrl:
        'https://images.pexels.com/photos/46710/pexels-photo-46710.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    price: 59.99,
  ),
  Product(
    name: 'Coffee Maker',
    description: 'Automatic coffee maker with multiple functions',
    imageUrl:
        'https://images.pexels.com/photos/4349846/pexels-photo-4349846.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    price: 129.99,
  ),
];
